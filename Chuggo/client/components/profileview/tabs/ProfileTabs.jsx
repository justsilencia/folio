import React, {Component} from 'react';
import { Tab, Tabs, TabList, TabPanel } from 'react-tabs';
import Wall from '../wall/Wall.jsx';
import Watching from '../watched/Watching.jsx';
import FollowingPanel from '../following/FollowingPanel.jsx';

class ProfileTabs extends Component {
    constructor(props) {
        super(props);
    }

    render() {
        // If device is likely mobile, the right 'following' column won't be rendered,
        // and thus the following component will be added to the tab list.
        if (window.innerWidth >= 1200) {
            var tabComponent = (
                <Tabs>
                    <TabList className='react-tabset'>
                        <Tab>
                            <input type='radio' name='react-tabset' id='react-tab1' defaultChecked></input>
                            <label htmlFor='react-tab1'>Wall</label>
                        </Tab>
                        <Tab>
                            <input type='radio' name='react-tabset' id='react-tab2'></input>
                            <label htmlFor='react-tab2'>Watched</label>
                        </Tab>
                    </TabList>
                    <TabPanel selectedClassName='react-tab-panel'>
                        <Wall/>
                    </TabPanel>
                    <TabPanel selectedClassName='react-tab-panel'>
                        <Watching/>
                    </TabPanel>
                </Tabs>
            );
        } else {
            var tabComponent = (
                <Tabs>
                    <TabList className='react-tabset'>
                        <Tab>
                            <input type='radio' name='react-tabset' id='react-tab1' defaultChecked></input>
                            <label htmlFor='react-tab1'>Wall</label>
                        </Tab>
                        <Tab>
                            <input type='radio' name='react-tabset' id='react-tab2'></input>
                            <label htmlFor='react-tab2'>Watched</label>
                        </Tab>
                        <Tab>
                            <input type='radio' name='react-tabset' id='react-tab4'></input>
                            <label htmlFor='react-tab4'>Following</label>
                        </Tab>
                    </TabList>
                    <TabPanel selectedClassName='react-tab-panel'>
                        <Wall/>
                    </TabPanel>
                    <TabPanel selectedClassName='react-tab-panel'>
                        <Watching/>
                    </TabPanel>
                    <TabPanel selectedClassName='react-tab-panel'>
                        <FollowingPanel />
                    </TabPanel>
                </Tabs>
            );
        }
        
        return (
            <>
                {tabComponent}
            </>
        )
    }
}

export default ProfileTabs;