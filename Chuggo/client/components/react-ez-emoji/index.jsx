import React, { Component } from 'react';
import PropTypes from 'prop-types';
import EmojiMenu from './emoji-menu.jsx';
import { sanitizeInput, 
         saveSelection, 
         restoreSelection, 
         getWordAt, 
         getSimilarHashtags,
         getSimilarUsers } from './utils.jsx';
import { emojiIcons } from './emoji-icons';
import SuggestHashtags from './suggest-hashtags.jsx';
import SuggestUsers from './suggest-users.jsx';
import { insertText } from './utils.jsx';

export default class EzEmoji extends Component {

    constructor(props) {
        super(props);

        this.state = {
            emojis: emojiIcons,
            savedSelection: null,
            menuVisible: false,
            suggestHashtagVisible: false,
            suggestUserVisible: false,
            hashtagSuggestions: [],
            userSuggestions: []
        }

        this.inputRef = React.createRef();
        this.menuRef = React.createRef();
        this.onChange = this.onChange.bind(this);
        this.onClick = this.onClick.bind(this);
        this.MenuToggle = this.MenuToggle.bind(this);
        this.toggleHashtagSuggestions = this.toggleHashtagSuggestions.bind(this);
        this.toggleUserSuggestions = this.toggleUserSuggestions.bind(this);
        this.getSanitizedVal = this.getSanitizedVal.bind(this);
        this.handleHashtag = this.handleHashtag.bind(this);
        this.handleUser = this.handleUser.bind(this);
        this.insertUserMention = this.insertUserMention.bind(this);
        this.insertHashtag = this.insertHashtag.bind(this);
    }

    getSanitizedVal() {
        const el = this.inputRef.current;
        return sanitizeInput(el);
    }

    onChange(e) {
        // If user is posting a comment, enter should not create a new line.
        // Rather, pressing enter should post the comment.
        if (e) {
            if (e.keyCode === 13 && this.props.postEnter === true) {
                this.props.postMethod();
                this.props.setVal('', this.props.blurtId);
                this.inputRef.current.innerText = '';
                return true;
            }
        }

        // Sanitize text. Namely, encoding emoji <img /> to :emoji: format.
        const sanitizedText = this.getSanitizedVal();

        // Pass value to parent state.
        if (!this.props.blurtId) {
            this.props.setVal(sanitizedText);
        } else {
            this.props.setVal(sanitizedText, this.props.blurtId);
        }
        

        // Check if current word being typed is a username mention, or a hashtag.
        const isHashtag = getWordAt(sanitizedText, sanitizedText.length).match(/(?:^|\B)#[a-zA-Z][\w]{1,19}\b/g);
		const isUser = getWordAt(sanitizedText, sanitizedText.length).match(/(?:^|\B)@[a-zA-Z][\w]{1,19}\b/g);

        // Toggle modal window for suggested hashtags.
        if (isHashtag) {
            this.handleHashtag(isHashtag[0]);
        } else {
            if (this.state.suggestHashtagVisible) {
                this.toggleHashtagSuggestions();
            }
        }

        if (isUser) {
            this.handleUser(isUser[0]);
        } else {
            if (this.state.suggestUserVisible) {
                this.toggleUserSuggestions();
            }
        }

        // Save selection on change, to keep proper cursor position.
        const savedSel = saveSelection();
        this.setState({ savedSelection: savedSel });
        
        document.execCommand('enableObjectResizing', true, true);
    }

    handleHashtag(partialHashtag) {
        const savedSel = saveSelection();
        this.setState({savedSelection: savedSel});
        
        getSimilarHashtags(partialHashtag).then((list) => {
            this.setState({ hashtagSuggestions: list });
        });
        if (!this.state.suggestHashtagVisible) {
            this.toggleHashtagSuggestions();
        }
    }

    insertHashtag(hashtag) {
        insertText(hashtag, this.state.savedSelection);
        const savedSel = saveSelection();
        this.setState({savedSelection: savedSel}, this.toggleHashtagSuggestions());
    }

    handleUser(partialUser) {
        const savedSel = saveSelection();
        this.setState({savedSelection: savedSel});
        
        getSimilarUsers(partialUser).then((list) => {
            this.setState({ userSuggestions: list });
        });
        if (!this.state.suggestUserVisible) {
            this.toggleUserSuggestions();
        }
    }

    insertUserMention(displayName) {
        insertText(displayName, this.state.savedSelection);
        const savedSel = saveSelection();
        this.setState({savedSelection: savedSel}, this.toggleUserSuggestions());
    }

    onClick() {
        this.disableResize();
        const savedSel = saveSelection();
        this.setState({savedSelection: savedSel});
    }

    componentDidUpdate() {
        if (this.state.savedSelection) {
            restoreSelection(this.state.savedSelection);
        }
    }

    disableResize() {
        document.execCommand('enableObjectResizing', false, false);
    }

    MenuToggle() {
        this.setState({ menuVisible: !this.state.menuVisible });
    }

    toggleHashtagSuggestions() {
        this.setState({ suggestHashtagVisible: !this.state.suggestHashtagVisible });
    }

    toggleUserSuggestions() {
        this.setState({ suggestUserVisible: !this.state.suggestUserVisible });
    }

    componentDidMount() {
        if (this.props.focus) {
            this.inputRef.current.focus();
        }
    }

    render () {
        return (
            <>
                <div className={this.props.cssClass?this.props.cssClass:'ez-emoji-container'}>
                    <div id='ez-emoji-input'
                        contentEditable 
                        suppressContentEditableWarning='true'
                        onKeyUp={(e) => this.onChange(e)} 
                        onPaste={this.onChange}
                        onClick={this.onClick}
                        onMouseDown={this.disableResize}
                        onFocus={this.disableResize}
                        ref={this.inputRef}
                    >
                    </div>
                    <svg onClick={this.MenuToggle} aria-hidden="true" focusable="false" data-prefix="fa" data-icon="smile" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 496 512" data-fa-i2svg=""><path fill="currentColor" d="M248 8C111 8 0 119 0 256s111 248 248 248 248-111 248-248S385 8 248 8zm80 168c17.7 0 32 14.3 32 32s-14.3 32-32 32-32-14.3-32-32 14.3-32 32-32zm-160 0c17.7 0 32 14.3 32 32s-14.3 32-32 32-32-14.3-32-32 14.3-32 32-32zm194.8 170.2C334.3 380.4 292.5 400 248 400s-86.3-19.6-114.8-53.8c-13.6-16.3 11-36.7 24.6-20.5 22.4 26.9 55.2 42.2 90.2 42.2s67.8-15.4 90.2-42.2c13.4-16.2 38.1 4.2 24.6 20.5z"></path></svg>
                    { this.state.menuVisible && <EmojiMenu inputRef={this.inputRef} emojiPath={this.props.emojiPath} triggerChange={this.onChange} MenuToggle={this.MenuToggle} savedSelection={this.state.savedSelection} /> }
                    { this.state.suggestHashtagVisible && <SuggestHashtags insertHashtag={this.insertHashtag} hashtags={this.state.hashtagSuggestions} /> }
                    { this.state.suggestUserVisible && <SuggestUsers insertUserMention={this.insertUserMention} users={this.state.userSuggestions} /> }
                </div>
            </>
        )

    }

}

EzEmoji.propTypes = {
    cssClass: PropTypes.string,
    setVal: PropTypes.func.isRequired,
    emojiPath: PropTypes.string.isRequired,
    focus: PropTypes.bool
}