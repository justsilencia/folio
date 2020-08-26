import React, { Component } from 'react';

class NavBar extends Component {
    constructor(props) {
        super(props);

    }

    render() {
        return (
            <div role="navigation" className="navbar navbar-default navbar-fixed-top">
                <div className="container-fluid">
                    <div className="navbar-header">
                        <button className="navbar-toggle" type="button" data-toggle="collapse" data-target="navbar-collapse">
                            <span className="sr-only">Toggle navigation</span>
                            <span className="icon-bar" />
                            <span className="icon-bar" />
                            <span className="icon-bar" />
                        </button>
                        <a href="/" className="navbar-brand">REVIWA</a>
                    </div>
                    <div className="collapse navbar-collapse">
                        <ul className="nav navbar-nav navbar-left">
                            <li className="active">
                                <a href="/">Home</a>
                            </li>
                        </ul>
                        <ul className="nav navbar-nav navbar-right">
                            <li>
                                <a className="profile-menu-link" href="/home">
                                    <img />
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        )
    }
}

export default NavBar;