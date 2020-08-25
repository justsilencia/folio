
import React from 'react';
import { render } from 'react-dom';
import { BrowserRouter as Router, Switch, Route } from "react-router-dom";
import CustomNav from './components/nav/NavBar.jsx';
import AlphaImport from './components/alpha-import/AlphaImport.jsx';
import AlphaRun from './components/alpha-run/AlphaRun.jsx';
import JobCodes from './components/job-codes/JobCodes.jsx';
import ClassLists from './components/class-lists/ClassLists.jsx';
import GroupList from './components/class-lists/GroupList.jsx';
import ClassStudents from './components/class-students/ClassStudents.jsx';
import GroupStudents from './components/class-students/GroupStudents.jsx';
import AllGroups from './components/class-students/AllGroups.jsx';
import Unassigned from './components/class-students/Unassigned.jsx';
import "./styles/bootstrap.css";
import "./styles/app.css";

const rootEl = document.getElementById('root');

render(
    <div className="App container">
        <Router>
            <CustomNav />

            <Switch>
                <Route exact path="/">
                    <AlphaRun />
                </Route>
                <Route path="/alphaimport">
                    <AlphaImport />
                </Route>
                <Route path="/jobcodes">
                    <JobCodes />
                </Route>
                <Route component={ClassLists} path="/classlists" />
                <Route path="/grouplist">
                    <GroupList />
                </Route>
                <Route path="/unassigned">
                    <Unassigned />
                </Route>
                <Route path="/allgroups">
                    <AllGroups />
                </Route>
                <Route path="/classstudents/:classname/:teacher" render={
                    (props) => <ClassStudents {...props} />
                } />
                <Route path="/groupstudents/:groupname" render={
                    (props) => <GroupStudents {...props} />
                } />
            </Switch>
        </Router>    
    </div>
    , rootEl);  
