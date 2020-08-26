import React from 'react';
import PerfectScrollbar from 'react-perfect-scrollbar';

const SuggestUsers = (props) => {

    return (
        <>
            <div className='blurt-meta-list'>
                <PerfectScrollbar>
                    <ul>
                        {
                            props.users.map((user, i) => (
                                <li onClick={() => props.insertUserMention(user.displayName)} key={i}>
                                    <img src={'/images/profiles/' + user.smImg }  />
                                    <span> @{ user.displayName }</span>
                                </li>
                            ))
                        }
                    </ul>
                </PerfectScrollbar>
            </div>
        </>
    )
}

export default SuggestUsers;