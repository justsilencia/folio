import React from 'react';
import sanitizeHtml from 'sanitize-html';
import { createIcon, emojiIcons } from '../react-ez-emoji/emoji-icons';
import regexes from '../utils/RegExes';

const Sanitizer = (props) => {
    const css = props.cssClass || ''; 
    
    const clean = sanitizeHtml(props.dirty, {
        allowedTags: sanitizeHtml.defaults.allowedTags.concat(['img']),
        allowedAttributes: {
          'img': ['src', 'alt', 'width', 'height']
        },
        textFilter: function(text) {
            // Replace :smily: with <img> for emoji display.
            // Wrap mentions and hashtags in link tag.
            
            var emojiPath = "/images/emojis",
                hashtags = text.match(regexes.ValidateHashtag),
                mentions = text.match(regexes.ValidateMention);
            
            for (var key in emojiIcons) {
                text = text.replace(key, createIcon(key, emojiPath));
            }

            if (hashtags) {
                hashtags.forEach((hashtag) => {
                    text = text.replace(hashtag, '<a href="http://localhost:3000">' + hashtag + '</a>');
                });
            }
            
            if (mentions) {
                mentions.forEach((mention) => {
                    text = text.replace(mention, '<a href="http://localhost:3000">' + mention + '</a>');
                });
            }

            return text;
        }
      });

    return (
        <div className={css} dangerouslySetInnerHTML={{__html: clean}} />
    )
}

export default Sanitizer;