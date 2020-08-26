import React from 'react';
import PerfectScrollbar from 'react-perfect-scrollbar';

const SuggestHashtags = (props) => {

    return (
        <>
            <div className='blurt-meta-list'>
                <PerfectScrollbar>
                    <ul>
                        {
                            props.hashtags.map((hashtag, i) => (
                                <li onClick={() => props.insertHashtag(hashtag)} key={i}> #{ hashtag }</li>
                            ))
                        }
                    </ul>
                </PerfectScrollbar>
            </div>
        </>
    )
}

export default SuggestHashtags;