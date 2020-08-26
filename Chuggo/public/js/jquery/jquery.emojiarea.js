/** 
 * emojiarea - A rich textarea control that supports emojis, WYSIWYG-style.
 * Copyright (c) 2012 DIY Co
 *
 * Licensed under the Apache License, Version 2.0 (the "License"); you may not use this 
 * file except in compliance with the License. You may obtain a copy of the License at:
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software distributed under 
 * the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF 
 * ANY KIND, either express or implied. See the License for the specific language 
 * governing permissions and limitations under the License.
 *
 * @author Brian Reavis <brian@diy.org>
 */

(function($, window, document) {

	var ELEMENT_NODE = 1;
	var TEXT_NODE = 3;
	var TAGS_BLOCK = ['p', 'div', 'pre', 'form'];
	var KEY_ESC = 27;
	var KEY_TAB = 9;
	var KEY_ENTER = 13;

	// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

	$.emojiarea = {
		path: '',
		icons: {},
		defaults: {
			button: null,
			buttonLabel: 'Emojis',
			buttonPosition: 'after'
		}
	};

	$.fn.emojiarea = function(options) {
		options = $.extend({}, $.emojiarea.defaults, options);
		return this.each(function() {
			var $textarea = $(this);
			if ('contentEditable' in document.body && options.wysiwyg !== false) {
				new EmojiArea_WYSIWYG($textarea, options);
			} else {
				new EmojiArea_Plain($textarea, options);
			}
		});
	};

	// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

	var util = {};

	util.restoreSelection = (function() {
		if (window.getSelection) {
			return function(savedSelection) {
				var sel = window.getSelection();
				sel.removeAllRanges();
				for (var i = 0, len = savedSelection.length; i < len; ++i) {
					sel.addRange(savedSelection[i]);
				}
			};
		} else if (document.selection && document.selection.createRange) {
			return function(savedSelection) {
				if (savedSelection) {
					savedSelection.select();
				}
			};
		}
	})();

	util.saveSelection = (function() {
		if (window.getSelection) {
			return function() {
				var sel = window.getSelection(), ranges = [];
				
				if (sel.rangeCount) {
					for (var i = 0, len = sel.rangeCount; i < len; ++i) {
						ranges.push(sel.getRangeAt(i));
					}
				}
				
				return ranges;
			};
		} else if (document.selection && document.selection.createRange) {
			return function() {
				var sel = document.selection;
				return (sel.type.toLowerCase() !== 'none') ? sel.createRange() : null;
			};
		}
	})();

	// CUSTOMIZED: Add method to get the word at the current cursor offset.
	util.getWordAt = function(str, pos) {
		
		// Perform type conversions.
		str = String(str);
		pos = Number(pos);
	  
		// Search for the word's beginning and end.
		var left = str.slice(0, pos + 1).search(/\S+$/),
		  right = str.slice(pos).search(/\s/);
		 
		// The last word in the string is a special case.
		if (right < 0) {
		  return str.slice(left);
		}
		// Return the word, using the located bounds to extract it from the string.
		return str.slice(left, right + pos);
	}

	// CUSTOMIZE function for inserting text into content editable.
	util.insertText = function(txt, selection) {
		util.restoreSelection(selection);
		var sel, range, el, frag, node;
		
		if(txt.charAt(0) === "#" || txt.charAt(0) === "@") {
			txt = txt.substring(1, txt.length);
		}
		
		sel = document.getSelection();
		sel.modify("extend", "backward", "word");
		range = sel.getRangeAt(0);

		range.deleteContents();
		el = document.createElement("div");
		el.innerHTML = txt;
		frag = document.createDocumentFragment();
		while (node = el.firstChild) {
			frag.appendChild(node);
		}
		range.insertNode(frag);
		range.collapse();
	}

	// CUSTOMIZE function for getting autocomplete list of trending hashtags similar to what
	// user is typing.
	util.getSimilarHashtags = async function(partialHashtag) {
		const tagSearch = partialHashtag.replace('#', '');
		const data = await fetch('/getsimilarhashtags/' + tagSearch, {
			method: 'GET',
			headers: {
				'Accept': 'application/json',
				'Content-Type': 'application/json'
			}
		})
		const jsonData = await data.json();
		return jsonData;
	};

	// CUSTOMIZE function for getting autocomplete list of users similar to what
	// user is typing for a mention.
	util.getSimilarUsers = async function(partialUser) {
		const userSearch = partialUser.replace('@', '');
		
		const data = await fetch('/getsimilarusers/' + userSearch, {
			method: 'GET',
			headers: {
				'Accept': 'application/json',
				'Content-Type': 'application/json'
			}
		})
		const jsonData = await data.json();
		return jsonData;
	};

	util.replaceSelection = (function() {
		if (window.getSelection) {
			return function(content) {
				var range, sel = window.getSelection();
				var node = typeof content === 'string' ? document.createTextNode(content) : content;
				
				if (sel.getRangeAt && sel.rangeCount) {
					range = sel.getRangeAt(0);
					range.deleteContents();
					range.insertNode(document.createTextNode(' '));
					range.insertNode(node);
					range.setStart(node, 0);
					
					window.setTimeout(function() {
						range = document.createRange();
						range.setStartAfter(node);
						range.collapse(true);
						sel.removeAllRanges();
						sel.addRange(range);
					}, 0);
				}
			}
		} else if (document.selection && document.selection.createRange) {
			return function(content) {
				var range = document.selection.createRange();
				if (typeof content === 'string') {
					range.text = content;
				} else {
					range.pasteHTML(content.outerHTML);
				}
			}
		}
	})();

	util.insertAtCursor = function(text, el) {
		text = ' ' + text;
		var val = el.value, endIndex, startIndex, range;
		if (typeof el.selectionStart != 'undefined' && typeof el.selectionEnd != 'undefined') {
			startIndex = el.selectionStart;
			endIndex = el.selectionEnd;
			el.value = val.substring(0, startIndex) + text + val.substring(el.selectionEnd);
			el.selectionStart = el.selectionEnd = startIndex + text.length;
		} else if (typeof document.selection != 'undefined' && typeof document.selection.createRange != 'undefined') {
			el.focus();
			range = document.selection.createRange();
			range.text = text;
			range.select();
		}
	};

	util.extend = function(a, b) {
		if (typeof a === 'undefined' || !a) { a = {}; }
		if (typeof b === 'object') {
			for (var key in b) {
				if (b.hasOwnProperty(key)) {
					a[key] = b[key];
				}
			}
		}
		return a;
	};

	util.escapeRegex = function(str) {
		return (str + '').replace(/([.?*+^$[\]\\(){}|-])/g, '\\$1');
	};

	util.htmlEntities = function(str) {
		return String(str).replace(/&/g, '&amp;').replace(/</g, '&lt;').replace(/>/g, '&gt;').replace(/"/g, '&quot;');
	};

	// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

	var EmojiArea = function() {};

	EmojiArea.prototype.setup = function() {
		var self = this;
		
		this.$editor.on('focus', function() { self.hasFocus = true; });
		this.$editor.on('blur', function() { self.hasFocus = false; });
		
		this.setupButton();
	};

	EmojiArea.prototype.setupButton = function() {
		var self = this;
		var $button;

		if (this.options.button) {
			$button = $(this.options.button);
		} else if (this.options.button !== false) {
			$button = $('<a href="javascript:void(0)">');
			$button.html(this.options.buttonLabel);
			$button.addClass('emoji-button');
			$button.attr({title: this.options.buttonLabel});
			this.$editor[this.options.buttonPosition]($button);
		} else {
			$button = $('');
		}

		$button.on('click', function(e) {
			EmojiMenu.show(self);
			e.stopPropagation();
		});
		
		this.$button = $button;
	};

	EmojiArea.createIcon = function(emoji) {
		var filename = $.emojiarea.icons[emoji];
		var path = $.emojiarea.path || '';
		if (path.length && path.charAt(path.length - 1) !== '/') {
			path += '/';
		}
		return '<img src="' + path + filename + '" alt="' + util.htmlEntities(emoji) + '">';
	};

	// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

	/**
	 * Editor (plain-text)
	 * 
	 * @constructor
	 * @param {object} $textarea
	 * @param {object} options
	 */

	var EmojiArea_Plain = function($textarea, options) {
		this.options = options;
		this.$textarea = $textarea;
		this.$editor = $textarea;
		this.setup();
	};

	EmojiArea_Plain.prototype.insert = function(emoji) {
		if (!$.emojiarea.icons.hasOwnProperty(emoji)) return;
		util.insertAtCursor(emoji, this.$textarea[0]);
		this.$textarea.trigger('change');
	};

	EmojiArea_Plain.prototype.val = function() {
		return this.$textarea.val();
	};

	util.extend(EmojiArea_Plain.prototype, EmojiArea.prototype);

	// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

	/**
	 * Editor (rich)
	 * 
	 * @constructor
	 * @param {object} $textarea
	 * @param {object} options
	 */

	var EmojiArea_WYSIWYG = function($textarea, options) {
		var self = this;

		this.options = options;
		this.$textarea = $textarea;
		this.$editor = $('<div>').addClass('emoji-wysiwyg-editor');

		// CUSTOMIZE: Added 'enter' property allows for user to press enter to post comment.
		this.$editor.on('keyup', (e) => {
			if (e.keyCode === KEY_ENTER) {
				this.options.enter = true;
			} else { this.options.enter = false; }
		});

		this.$editor.text($textarea.val());
		this.$editor.attr({contenteditable: 'true'});
		this.$editor.on('blur keyup paste', function() { return self.onChange.apply(self, arguments); });
		this.$editor.on('mousedown focus', function() { document.execCommand('enableObjectResizing', false, false); });
		this.$editor.on('blur', function() { document.execCommand('enableObjectResizing', true, true); });

		var html = this.$editor.text();
		var emojis = $.emojiarea.icons;
		for (var key in emojis) {
			if (emojis.hasOwnProperty(key)) {
				html = html.replace(new RegExp(util.escapeRegex(key), 'g'), EmojiArea.createIcon(key));
			}
		}
		this.$editor.html(html);

		$textarea.hide().after(this.$editor);

		this.setup();

		this.$button.on('mousedown', function() {
			if (self.hasFocus) {
				self.selection = util.saveSelection();
			}
		});
	};

	// CUSTOMIZED
	EmojiArea_WYSIWYG.prototype.onChange = function(e) {
		// First check if its a key input, and not a mouse click.
		if (e && e.keyCode) {
			// For some reason, inputRawText ends up with the alt value within the emoji <img> tag.
			// Therefor, this was optimal for checking length and finding current word.
			// Must check behavior in different browsers.
			var inputRawText = this.val().replace(/\n/g, ' ');
			// Check the 'enter' property in order to accomodate user post.
			if (!this.options.enter) {
				// Get word at cursor, and check if it is a valid hashtag.
				// Had to use raw text length rather than caret character offset.
				// Deleted the getcharacteroffset method. Look to previous backups if needed...
				// Cannot foresee any problems with this.
				const hashtag = util.getWordAt(inputRawText, inputRawText.length).match(/(?:^|\B)#[a-zA-Z][\w]{1,19}\b/g);
				const user = util.getWordAt(inputRawText, inputRawText.length).match(/(?:^|\B)@[a-zA-Z][\w]{1,19}\b/g);

				// Code to remove the meta modal box if the user presses spacebar while it is open.
				// Not the prettiest but it works...icon-edit-code
				if (e.keyCode == 32 || e.keyCode == 8) {
					const boxCheck = document.getElementById('hashtagbox');
					const boxCheck2 = document.getElementById('usernamebox');
					if (boxCheck) {
						boxCheck.remove();
					}
					if (boxCheck2) {
						boxCheck2.remove();
					}
				}

				if (hashtag) {
					this.handleHashtag(hashtag[0]);
				}
				if (user) {
					this.handleUsername(user[0]);
				}
				this.$textarea.val(this.val()).trigger('change');
			} else {
				if (this.options.origin != 'new-blurt') {
					this.$textarea.val('enter').trigger('change');
					this.$textarea.val('');
					this.$editor.text('');
				} else {
					this.$textarea.val(this.val()).trigger('change');
				}
			}

			if (this.options.space) {
				this.$textarea.val(this.val()).trigger('change');
			}
		}
	};

	// CUSTOMIZE: Changed this.onChange to this.$textarea.val because onchange would no longer
	// update value with emoji image after my hashtag modifications.
	EmojiArea_WYSIWYG.prototype.insert = function(emoji) {
		var $img = $(EmojiArea.createIcon(emoji));
		if ($img[0].attachEvent) {
			$img[0].attachEvent('onresizestart', function(e) { e.returnValue = false; }, false);
		}
		
		this.$editor.trigger('focus');
		if (this.selection) {
			util.restoreSelection(this.selection);
		}
		try { util.replaceSelection($img[0]); } catch (e) {}
		//this.onChange();
		this.$textarea.val(this.val()).trigger('change');
	};

	// CUSTOMIZE: Add ability to modify hashtag text style if user types valid hashtag.
	// Start by saving the current selection, this way we don't lose state when the 
	// hashtag modal appears. Next, call hashtag list modal function.
	EmojiArea_WYSIWYG.prototype.handleHashtag = function(partialHashtag) {
			var selection = util.saveSelection();
			this.insertHashtagList(selection, partialHashtag);  
	};

	// CUSTOMIZE function for hashtag list popup.
	EmojiArea_WYSIWYG.prototype.insertHashtagList = (function() {
		if (window.getSelection) {
			return function(sel, partialHashtag) {
				// Use custom property for parent container so that the modal list
				// can be utilized on different inputs. i.e comments and blurts.
				var container = document.getElementById(this.options.parentContainer);
				var boxCheck = document.getElementById('hashtagbox');
				var listCheck = document.getElementById('hashtag-list');
				
				function hashClick(e, el, sel) {
					el.remove();
					util.insertText(e.target.innerText, sel);
				}
				
				if (listCheck) {
					listCheck.removeEventListener('click', hashClick);
					listCheck.remove();
				}

				util.getSimilarHashtags(partialHashtag).then((list) => {
					var listItem;
					var listItems = document.createElement('ul');
					listItems.setAttribute('id', 'hashtag-list');

					if (list.length > 0) {
						list.forEach((item) => {
							listItem = document.createElement('li');
							listItem.innerHTML = item;
							listItems.appendChild(listItem);
						});
					} else {
						listItem = document.createElement('span');
						listItem.innerHTML = "No matches. You would be the first to post this hashtag.";
						listItems.appendChild(listItem);
					}
					
					if (!boxCheck) {
						var hashtagBox = document.createElement('div');
						hashtagBox.setAttribute('id', 'hashtagbox');
						hashtagBox.setAttribute('class', 'blurt-meta-list');
						hashtagBox.appendChild(listItems);
						container.appendChild(hashtagBox);
						listItems.addEventListener('click', (e) => hashClick(e, hashtagBox, sel));
					} else {
						if (boxCheck.firstChild) {
							boxCheck.removeChild(boxCheck.firstChild);
						}
						boxCheck.appendChild(listItems);
						listItems.addEventListener('click', (e) => hashClick(e, boxCheck, sel));
					}
					
					
				});
			}
		} else if (document.selection && document.selection.createRange) {
			return function(content) {
				alert("Your browser is too old to support the funtionality of this site.");
				var range = document.selection.createRange();
				if (typeof content === 'string') {
					range.text = content;
				} else {
					range.pasteHTML(content.outerHTML);
				}
			}
		}
	})();

	// CUSTOMIZE: Add ability to modify hashtag text style if user types valid hashtag.
	// Start by saving the current selection, this way we don't lose state when the 
	// hashtag modal appears. Next, call hashtag list modal function.
	EmojiArea_WYSIWYG.prototype.handleUsername = function(partialUser) {
		var selection = util.saveSelection();
		this.insertUsernameList(selection, partialUser);  
	};

	// CUSTOMIZE function for username list modal. Essentially a mirror of the hashtag functionality.
	EmojiArea_WYSIWYG.prototype.insertUsernameList = (function() {
		if (window.getSelection) {
			return function(sel, partialUsername) {
				// Use custom property for parent container so that the list 
				// can be utilized on different inputs. i.e comments and blurts.
				var container = document.getElementById(this.options.parentContainer);
				var boxCheck = document.getElementById('usernamebox');
				var listCheck = document.getElementById('username-list');
				
				function usernameClick(e, el, sel) {
					let txt = String(e.target.innerText).trim();
					txt = txt.replace('@', '');
					if (el) el.remove();
					util.insertText(txt, sel);
				}
				
				if (listCheck) {
					listCheck.removeEventListener('click', usernameClick);
					listCheck.remove();
				}

				util.getSimilarUsers(partialUsername).then((list) => {
					var listItem,
						listItems = document.createElement('ul'),
						userBox, userImg, displayName;
					listItems.setAttribute('id', 'username-list');

					if (list.length > 0) {
						list.forEach((item) => {
							listItem = document.createElement('li');
							userBox = document.createElement('div');
							userImg = document.createElement('img');
							displayName = document.createElement('span');
							userImg.setAttribute('src', '/images/profiles/' + item.smImg);
							displayName.innerHTML = ' @' + item.displayName;
							displayName.addEventListener('click', (e) => usernameClick(e, hashtagBox, sel));
							userBox.appendChild(userImg); 
							userBox.appendChild(displayName);
							listItem.appendChild(userBox);
							listItems.appendChild(listItem);
						});
					} else {
						listItem = document.createElement('span');
						listItem.innerHTML = "No matches..";
						listItems.appendChild(listItem);
					}
					

					if (!boxCheck) {
						var hashtagBox = document.createElement('div');
						hashtagBox.setAttribute('id', 'usernamebox');
						hashtagBox.setAttribute('class', 'blurt-meta-list');
						hashtagBox.appendChild(listItems);
						container.appendChild(hashtagBox);
						//listItems.addEventListener('click', (e) => usernameClick(e, hashtagBox, sel));
					} else {
						if (boxCheck.firstChild) {
							boxCheck.removeChild(boxCheck.firstChild);
						}
						boxCheck.appendChild(listItems);
						listItems.addEventListener('click', (e) => usernameClick(e, boxCheck, sel));
					}
					
					
				});
			}
		} else if (document.selection && document.selection.createRange) {
			return function(content) {
				alert("Your browser is too old to support the funtionality of this site.");
				var range = document.selection.createRange();
				if (typeof content === 'string') {
					range.text = content;
				} else {
					range.pasteHTML(content.outerHTML);
				}
			}
		}
	})();

	EmojiArea_WYSIWYG.prototype.val = function() {
		var lines = [];
		var line  = [];

		var flush = function() {
			lines.push(line.join(''));
			line = [];
		};

		var sanitizeNode = function(node) {
			if (node.nodeType === TEXT_NODE) {
				line.push(node.nodeValue);
			} else if (node.nodeType === ELEMENT_NODE) {
				var tagName = node.tagName.toLowerCase();
				var isBlock = TAGS_BLOCK.indexOf(tagName) !== -1;

				if (isBlock && line.length) flush();

				if (tagName === 'img') {
					var alt = node.getAttribute('alt') || '';
					if (alt) line.push(alt);
					return;
				} else if (tagName === 'br') {
					flush();
				}

				var children = node.childNodes;
				for (var i = 0; i < children.length; i++) {
					sanitizeNode(children[i]);
				}

				if (isBlock && line.length) flush();
			}
		};

		var children = this.$editor[0].childNodes;
		for (var i = 0; i < children.length; i++) {
			sanitizeNode(children[i]);
		}

		if (line.length) flush();

		return lines.join('\n');
	};

	util.extend(EmojiArea_WYSIWYG.prototype, EmojiArea.prototype);

	// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

	/**
	 * Emoji Dropdown Menu
	 *
	 * @constructor
	 * @param {object} emojiarea
	 */
	var EmojiMenu = function() {
		var self = this;
		var $body = $(document.body);
		var $window = $(window);

		this.visible = false;
		this.emojiarea = null;
		this.$menu = $('<div>');
		this.$menu.addClass('emoji-menu');
		this.$menu.hide();
		this.$items = $('<div>').appendTo(this.$menu);

		$body.append(this.$menu);

		$body.on('keydown', function(e) {
			if (e.keyCode === KEY_ESC || e.keyCode === KEY_TAB) {
				self.hide();
			}
		});

		$body.on('mouseup', function() {
			self.hide();
		});

		$window.on('resize', function() {
			if (self.visible) self.reposition();
		});

		this.$menu.on('mouseup', 'a', function(e) {
			e.stopPropagation();
			return false;
		});

		this.$menu.on('click', 'a', function(e) {
			var emoji = $('.label', $(this)).text();
			window.setTimeout(function() {
				self.onItemSelected.apply(self, [emoji]);
			}, 0);
			e.stopPropagation();
			return false;
		});

		this.load();
	};

	EmojiMenu.prototype.onItemSelected = function(emoji) {
		this.emojiarea.insert(emoji);
		this.hide();
	};

	EmojiMenu.prototype.load = function() {
		var html = [];
		var options = $.emojiarea.icons;
		var path = $.emojiarea.path;
		if (path.length && path.charAt(path.length - 1) !== '/') {
			path += '/';
		}

		for (var key in options) {
			if (options.hasOwnProperty(key)) {
				var filename = options[key];
				html.push('<a href="javascript:void(0)" title="' + util.htmlEntities(key) + '">' + EmojiArea.createIcon(key) + '<span class="label">' + util.htmlEntities(key) + '</span></a>');
			}
		}

		this.$items.html(html.join(''));
	};

	EmojiMenu.prototype.reposition = function() {
		var $button = this.emojiarea.$button;
		var offset = $button.offset();
		offset.top += $button.outerHeight();
		offset.left += Math.round($button.outerWidth() / 2);
		
		this.$menu.css({
			top: offset.top,
			left: offset.left
		});
	};

	EmojiMenu.prototype.hide = function(callback) {
		if (this.emojiarea) {
			this.emojiarea.menu = null;
			this.emojiarea.$button.removeClass('on');
			this.emojiarea = null;
		}
		this.visible = false;
		this.$menu.hide();
	};

	EmojiMenu.prototype.show = function(emojiarea) {
		if (this.emojiarea && this.emojiarea === emojiarea) return;
		this.emojiarea = emojiarea;
		this.emojiarea.menu = this;

		this.reposition();
		this.$menu.show();
		this.visible = true;
	};

	EmojiMenu.show = (function() {
		var menu = null;
		return function(emojiarea) {
			menu = menu || new EmojiMenu();
			menu.show(emojiarea);
		};
	})();

})(jQuery, window, document);