import React, { Component } from 'react';
import LazyBlurtPanel from '../blurt/LazyBlurtLoader.jsx';
import alertTypes from './alert-types';

class AlertPanel extends Component {
    constructor(props) {
        super(props);
        this.state = {
            alertCache: {
                allAlerts: []
            },
            alerts: [],
            currentType: alertTypes.allAlerts
        }
        this.mountMoreBlurts = this.mountMoreBlurts.bind(this);
        this.setActive = this.setActive.bind(this);
        this.mountAlerts = this.mountAlerts.bind(this);
    }

    mountMoreBlurts() {
        // Needed to add this to include in props so child comp wouldn't break... 
        // Will fix later.
    }

    componentDidMount() {
        fetch('/getallalerts', {

        }).then(res => res.json())
        .then(data => {
            this.setState({alerts: data});
        })
    }

    mountAlerts(e, alertType) {
        switch (alertType) {
            case alertTypes.allAlerts:
                fetch('/getallalerts', {

                }).then(res => res.json())
                .then(data => {
                    this.setState({alerts: data});
                })
                break;
            case alertTypes.blurtComment:
                fetch('/getblurtcommentalerts', {

                }).then(res => res.json())
                .then(data => {
                    this.setState({alerts:  data});
                })
                break;
            case alertTypes.blurtUpvote:
                fetch('/getblurtupvotealerts', {

                }).then(res => res.json())
                .then(data => {
                    this.setState({alerts: data});
                })
                break;
        }

        this.setActive(e);
    }

    setActive(e) {
        const activeEl = e.target.parentElement,
              prevActive = document.getElementsByClassName('alert-btn-active');
        prevActive[0].className = '';
        activeEl.className = 'alert-btn-active';
    }

    render() {
        return (
            <>
                <div className='row'>
                    <div className='col-lg-4'>
                        <div className='alert-filter-buttons affix'>
                            <ul>
                                <li className='alert-btn-active'>
                                    <a onClick={(e) => {
                                        this.mountAlerts(e, alertTypes.allAlerts)
                                        }} 
                                        href='javascript:void(0)'>
                                        All
                                    </a>
                                </li>

                                <li>
                                    <a onClick={(e) => {
                                        this.mountAlerts(e, alertTypes.blurtComment)
                                        }} 
                                        href='javascript:void(0)'>
                                        Comments
                                    </a>
                                </li>

                                <li>
                                    <a onClick={(e) => {
                                        this.mountAlerts(e, alertTypes.blurtUpvote)
                                        }} 
                                        href='javascript:void(0)'>
                                        Upvotes
                                    </a>
                                </li>

                                <li>
                                    <a onClick={(e) => {
                                        this.mountAlerts(e, 'mentions')
                                        }} 
                                        href='javascript:void(0)'>
                                        Mentions
                                    </a>
                                </li>

                                <li>
                                    <a onClick={(e) => {
                                        this.mountAlerts(e, 'interest')
                                        }} 
                                        href='javascript:void(0)'>
                                        Of Interest
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div className='col-lg-8'>
                        <LazyBlurtPanel 
                        appendDate={true}
                        random={false}
                        blurts={this.state.alerts} 
                        lazyElement='lzywall'
                        currentUser={true}
                        mountMoreBlurts={this.mountMoreBlurts}
                        />
                    </div>
                </div>
            </>
        )
    }
}

export default AlertPanel;