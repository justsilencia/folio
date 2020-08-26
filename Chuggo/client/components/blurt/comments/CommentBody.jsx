import React from 'react';
import Sanitizer from '../../utils/Sanitizer.jsx';

export default function CommentBody(props) {

    return (
        <div className="comment-panel-body">
            <Sanitizer dirty={props.text} />
        </div>
    )
}