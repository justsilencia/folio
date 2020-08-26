import { emojiIcons } from './emoji-icons';
import React from 'react';

const saveSelection = (function() {
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

const restoreSelection = (function() {
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

const htmlEntities = function(str) {
    return String(str).replace(/&/g, '&amp;').replace(/</g, '&lt;').replace(/>/g, '&gt;').replace(/"/g, '&quot;');
};

const escapeRegex = function(str) {
    return (str + '').replace(/([.?*+^$[\]\\(){}|-])/g, '\\$1');
};

const createIcon = function(emoji, imgpath) {
    var filename = emojiIcons[emoji];
    var path = imgpath || '';
    if (path.length && path.charAt(path.length - 1) !== '/') {
        path += '/';
    }
    return <img className='emoji-display' src={imgpath + filename} alt={htmlEntities(emoji)} />
}

const createHtmlIcon = function(emoji, imgpath) {
    var filename = emojiIcons[emoji];
    var path = imgpath || '';
    if (path.length && path.charAt(path.length - 1) !== '/') {
        path += '/';
    }
    var img = document.createElement('img');
    
    img.setAttribute('src', imgpath + filename);
    img.setAttribute('alt', htmlEntities(emoji));
    return img;
};

const replaceSelection = (function() {
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

const insertText = function(txt, selection) {
    restoreSelection(selection);
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

const sanitizeInput = function(ref) {
        var ELEMENT_NODE = 1;
        var TEXT_NODE = 3;
        var TAGS_BLOCK = ['p', 'div', 'pre', 'form'];
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

		var children = ref.childNodes;
		for (var i = 0; i < children.length; i++) {
			sanitizeNode(children[i]);
		}

		if (line.length) flush();

		return lines.join('\n');
}

const getWordAt = function(str, pos) {
		
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

const getSimilarHashtags = async function(partialHashtag) {
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
}

const getSimilarUsers = async function(partialUser) {
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

export { 
        saveSelection, 
        restoreSelection, 
        replaceSelection, 
        htmlEntities, 
        escapeRegex, 
        createIcon,
        createHtmlIcon,
        sanitizeInput,
        getWordAt,
        insertText,
        getSimilarHashtags,
        getSimilarUsers
    }