import React, { Component } from "react";
import { Navbar, Nav, NavDropdown } from "react-bootstrap";

class CustomNav extends Component {
    render() {
        return (
            <Navbar bg="dark" variant="dark" expand="lg">
                <Navbar.Brand href="/">OfficeX</Navbar.Brand>
                <Navbar.Toggle aria-controls="basic-navbar-nav" />
                <Navbar.Collapse id="basic-navbar-nav">
                    <Nav className="mr-auto">
                    <Nav.Link className='mr-3' href="/">Alpha Run</Nav.Link>
                    <Nav.Link className='mr-3' href="/alphaimport">Alpha Import</Nav.Link>
                    <Nav.Link className='mr-3' href="/jobcodes">Job Codes</Nav.Link>
                    <Nav.Link className='mr-3' href="/random">Random</Nav.Link>
                    <NavDropdown title="Class Lists" id="basic-nav-dropdown">
                        <NavDropdown.Item href="#action/3.4">Adults</NavDropdown.Item>
                        <NavDropdown.Item href="#action/3.4">Y/O</NavDropdown.Item>
                        <NavDropdown.Divider />
                        <NavDropdown.Item href="#action/3.1">S1</NavDropdown.Item>
                        <NavDropdown.Item href="#action/3.2">S2</NavDropdown.Item>
                        <NavDropdown.Item href="#action/3.3">S3</NavDropdown.Item>
                        <NavDropdown.Item href="#action/3.3">S4</NavDropdown.Item>
                        <NavDropdown.Divider />
                        <NavDropdown.Item href="#action/3.4">Y1</NavDropdown.Item>
                        <NavDropdown.Item href="#action/3.4">Y2</NavDropdown.Item>
                        <NavDropdown.Item href="#action/3.4">Y3</NavDropdown.Item>
                        <NavDropdown.Item href="#action/3.4">Y4</NavDropdown.Item>
                        <NavDropdown.Divider />
                        <NavDropdown.Item href="#action/3.4">Automotive</NavDropdown.Item>
                        <NavDropdown.Item href="#action/3.4">Energy-Tech</NavDropdown.Item>
                        <NavDropdown.Item href="#action/3.4">Landscaping</NavDropdown.Item>
                        <NavDropdown.Divider />
                        <NavDropdown.Item href="#action/3.4"><em>Modify Classes</em></NavDropdown.Item>
                    </NavDropdown>
                    </Nav>
                </Navbar.Collapse>
            </Navbar>
        );
    }
} 

export default CustomNav;