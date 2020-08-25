
import React from 'react';
import { render } from 'react-dom';
import { BrowserRouter as Router, Switch, Route } from "react-router-dom";
import CustomNav from './components/nav/NavBar.jsx';
import AlphaImport from './components/alpha-import/AlphaImport.jsx';
import AlphaRun from './components/alpha-run/AlphaRun.jsx';
import JobCodes from './components/job-codes/JobCodes.jsx';
import Random from './components/Random.jsx';
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
                <Route path="/random">
                    <Random />
                </Route>
            </Switch>
        </Router>    
    </div>
    , rootEl);  
