import React, { Component } from 'react';
import ProfileTabs from './components/profileview/tabs/ProfileTabs.jsx';
import FollowingPanel from './components/profileview/following/FollowingPanel.jsx';
import RecommendedPanel from './components/profileview/recommended/RecommendedPanel.jsx';
import ProfileMenuBtn from './components/nav/ProfileMenuBtn.jsx';
import NoticeBar from './components/nav/NoticeBar.jsx';

class UserComponent extends Component {
    constructor(props) {
        super(props);

        this.state = {
            reactElements: {
                tabEl: false,
                profileMenuEl: false,
                followingPanelEl: false,
                recommendPanelEl: false
            }
        }
    }

    componentDidMount() {
        this.setState({
            reactElements: {
                tabEl: document.getElementById('tabs-parent') ? true : false,
                profileMenuEl: document.getElementById('profile-settings-menu') ? true : false,
                followingPanelEl: document.getElementById('following-parent') ? true : false,
                recommendPanelEl: document.getElementById('recommended-parent') ? true : false
            }
        });
    }

    render() {
        return (
            <>
                {
                    (this.state.tabEl? <ProfileTabs /> : '') 
                    (this.state.profileMenuEl? <ProfileMenuBtn /> : '') 
                    (this.state.followingPanelEl? <FollowingPanel /> : '') 
                    (this.state.recommendPanelEl? <RecommendedPanel /> : '')
                }
            </>
        )
    }
}

export default UserComponent;