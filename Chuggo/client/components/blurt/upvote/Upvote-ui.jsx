import React from 'react';

const UpvoteBtn = (props) => {
    return (
        <>
            <a onClick={props.upvoteBlurt} className='btn-footer btn-blurt-footer-upvote'>
                <i className='fas fa-2x fa-arrow-up'></i>
            </a>
        </>
    )
}

const UpvoteCount = (props) => {
    return (
        <>
            <span className='footer-meta-stat'>{props.voteCount}</span>
        </>
    )
}

export { UpvoteBtn, UpvoteCount };