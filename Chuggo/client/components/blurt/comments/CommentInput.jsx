import React from 'react';
import EzEmoji from '../../react-ez-emoji/index.jsx';

export default function BlurtInput(props) {

    return (
        <>
            <EzEmoji cssClass='ez-emoji-container-comment'
                     blurtId={props.blurtId} 
                     setVal={props.setNewComment} 
                     emojiPath='/images/emojis/' 
                     postEnter={true} 
                     postMethod={props.postComment}
                     focus={true} />
        </>
    )

}

