import React, { Component } from "react";
import { Navbar, Nav, NavDropdown } from "react-bootstrap";

class CustomNav extends Component {
    constructor(props) {
        super(props);

        this.state = {
            classes: [],
            groups: []
        }

        this.populateClasses = this.populateClasses.bind(this);
        this.populateGroups = this.populateGroups.bind(this);
    }

    populateClasses() {
        fetch('http://localhost:4001/getclasses', {
                method: 'GET',
                headers: {
                  'Accept': 'application/json',
                  'Content-Type': 'application/json'
                }
        }).then(res => {
            return res.json();
        }).then(results => {
            this.setState({classes: results});
        });
    }

    populateGroups() {
        fetch('http://localhost:4001/getgroups', {
                method: 'GET',
                headers: {
                  'Accept': 'application/json',
                  'Content-Type': 'application/json'
                }
        }).then(res => {
            return res.json();
        }).then(results => {
            this.setState({groups: results});
        });
    }

    componentDidMount() {
        this.populateGroups();
        this.populateClasses();
    }

    render() {

        const classes = this.state.classes.filter((item) => item.classname !== 'UUU');

        const renderClassLinks = classes.map((item, i) => {
            return (
                <NavDropdown.Item key={i} href={"/classstudents/" + item.classname + '/' + item.teacher}>{item.classname}</NavDropdown.Item>
            )
        });

        const groups = this.state.groups.filter((item) => item.groupname !== 'UUU');

        const renderGroupLinks = groups.map((item, i) => {
            return (
                <NavDropdown.Item key={i} href={"/groupstudents/" + item.groupname}>{item.groupname}</NavDropdown.Item>
            )
        });

        return (
            <Navbar bg="dark" variant="dark" expand="lg">
                <Navbar.Brand href="/">MAC</Navbar.Brand>
                <Navbar.Toggle aria-controls="basic-navbar-nav" />
                <Navbar.Collapse id="basic-navbar-nav">
                    <Nav className="mr-auto">
                    <Nav.Link className='mr-3' href="/">Alpha Run</Nav.Link>
                    <Nav.Link className='mr-3' href="/alphaimport">Alpha Import</Nav.Link>
                    <Nav.Link className='mr-3' href="/jobcodes">Job Codes</Nav.Link>
                    <NavDropdown title="Class Lists" id="basic-nav-dropdown">
                        <NavDropdown.Item href="/classlists"><em>Modify Classes</em></NavDropdown.Item>
                        <NavDropdown.Item href="/grouplist"><em>Modify Groups</em></NavDropdown.Item>
                        <NavDropdown.Divider />
                        <NavDropdown.Divider />
                        <NavDropdown.Item href="/allgroups">ALL GROUPS</NavDropdown.Item>
                        {renderGroupLinks? renderGroupLinks : <NavDropdown.Item href="/"></NavDropdown.Item>}
                        <NavDropdown.Divider />
                        <NavDropdown.Divider />
                        {renderClassLinks? renderClassLinks : <NavDropdown.Item href="/"></NavDropdown.Item>}
                        <NavDropdown.Divider />
                        <NavDropdown.Divider />
                        <NavDropdown.Item href="/unassigned">Unassigned</NavDropdown.Item>
                    </NavDropdown>
                    </Nav>
                </Navbar.Collapse>
            </Navbar>
        );
    }
} 

export default CustomNav;