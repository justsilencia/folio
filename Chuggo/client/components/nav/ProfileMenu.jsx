import React, {useEffect, useState}  from 'react';

export default function(props) {
    return (
        <ul className='nav navbar-nav navbar-default dropdown-menu' role='menu'>
            <li>
                <a className='navbar-link' href='/home'>
                    <span>
                        <i className='fa fa-home' />
                    </span>
                    &nbsp;Home
                </a>
            </li>
            <li>
                <a className='navbar-link' href='/alerts'>
                    <span>
                        <i className='fa fa-bell' />
                    </span>
                    &nbsp;Alerts &nbsp;
                    {
                        (props.blurtAlerts > 0)? 
                        <div className='menu-alert-count'>
                            <span>
                                {
                                    props.blurtAlerts
                                }
                            </span>
                        </div> : ''
                    }
                </a>
            </li>
            <li>
                <a className='navbar-link' href='/usermessenger'>
                    <span>
                        <i className='fa fa-envelope' />
                    </span>
                    &nbsp;Messages
                </a>
            </li>
            <li>
                <a className='navbar-link' href='/usersettings'>
                    <span>
                        <i className='fa fa-jedi' />
                    </span>
                    &nbsp;Settings
                </a>
            </li>
        </ul>
    )
}

{/* <li>
            {
                (props.notices.length > 0)?
                props.notices.map(item => (
                    <div key={item._id}>
                        <span className='profile-notice-icon'>
                            <i className='fa fa-exclamation-triangle' />
                        </span>
                        <span className='notice-txt'><em>{item.user}</em></span>
                    </div>
                ))
                :
                ''
            }
            </li> */}