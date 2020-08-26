import React from 'react';
import EzEmoji from './react-ez-emoji/index.jsx';

export default function BlurtInput(props) {

    return (
        <>
            <EzEmoji setVal={props.SetBlurt} emojiPath='/images/emojis/' />
        </>
    )
}

