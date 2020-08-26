import React from 'react';
import ReactDOM from 'react-dom';
import ProfileTabs from './components/profileview/tabs/ProfileTabs.jsx';
import FollowingPanel from './components/profileview/following/FollowingPanel.jsx';
import RecommendedPanel from './components/profileview/recommended/RecommendedPanel.jsx';
import ProfileMenuBtn from './components/nav/ProfileMenuBtn.jsx';
import AlertPanel from './components/alerts/AlertPanel.jsx';

const tabEl = document.getElementById('tabs-parent'),
      profileMenuEl = document.getElementById('profile-menu'),
      followingPanelEl = document.getElementById('following-parent'),
      recommendPanelEl = document.getElementById('recommended-parent'),
      alertsEl = document.getElementById('alert-container');

if (alertsEl) {
  ReactDOM.render(
    <AlertPanel />,
    alertsEl
  )
}
if (tabEl) {
  ReactDOM.render(
    <ProfileTabs />,
    tabEl
  );
}
if (profileMenuEl) {
  ReactDOM.render(
    <ProfileMenuBtn />,
    profileMenuEl
  );
}

// Only render these components if the screen is over 1199px wide
if (window.innerWidth >= 1200) {
  if (followingPanelEl) {
    ReactDOM.render(
      <FollowingPanel />,
      followingPanelEl
    );
  }
  if (recommendPanelEl) {
    ReactDOM.render(
      <RecommendedPanel />,
      recommendPanelEl
    );
  }
}
if (module.hot) {
  module.hot.accept();
}