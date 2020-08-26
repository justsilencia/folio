import React, { Component } from 'react';

export default class NoticeBar extends Component {
    constructor(props) {
        super(props);
    }

    render() {
        return (
            <>
                <ul>
                    <li>
                        <a href='#'>
                            <i className='fa fa-3x fa-bell' />
                        </a>
                    </li>
                    <li>
                        <a href='#'>
                            <i className='fa fa-3x fa-envelope' />
                        </a>
                    </li>
                    <li>
                        <a href='#'>
                            <i className='fa fa-3x fa-fire' />
                        </a>
                    </li>
                </ul>
            </>
        )
    }
}