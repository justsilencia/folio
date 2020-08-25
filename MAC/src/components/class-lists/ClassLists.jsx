import React, { Component } from 'react';
import '../../styles/classlists.css';

class ClassList extends Component {
    constructor(props) {
        super(props);

        this.state = {
            classes: [],
            groups: [],
            group: '',
            className: '',
            teacher: ''
        }

        this.populateClasses = this.populateClasses.bind(this);
        this.populateGroups = this.populateGroups.bind(this);
        this.postClass = this.postClass.bind(this);
        this.deleteClass = this.deleteClass.bind(this);
        this.setClassName = this.setClassName.bind(this);
        this.setTeacherName = this.setTeacherName.bind(this);
        this.setGroup = this.setGroup.bind(this);
    }

    componentDidMount() {
        this.populateClasses();
        this.populateGroups();
    }

    setGroup(e) {
        this.setState({group: e.target.value});
    }

    setClassName(e) {
        this.setState({className: e.target.value});
    }

    setTeacherName(e) {
        this.setState({teacher: e.target.value});
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

    postClass() {
        if (this.state.group !== '' && this.state.className !== '' && this.state.teacher !== '') {
            fetch('http://localhost:4001/postclass', {
                method: 'POST',
                headers: {
                  'Accept': 'application/json',
                  'Content-Type': 'application/json'
                },
                body: JSON.stringify({
                    classname: this.state.className,
                    group: this.state.group,
                    teacher: this.state.teacher
                })
            }).then(res => {
                return res.json();
            }).then(results => {
                this.setState({className: '', teacher: ''});
                this.populateClasses();
            });
        } else {
            alert('Enter a group, class, and teacher.');
        }
    }

    deleteClass(delClass) {
        fetch('http://localhost:4001/deleteclass/' + delClass, {
                method: 'POST',
                headers: {
                  'Accept': 'application/json',
                  'Content-Type': 'application/json'
                }
              }).then(res => {
                  return res.json();
              }).then(json => {
                  this.populateClasses();
              });
    }

    render() {

        const renderClasses = this.state.classes.map((item, i) => {
            return (
                <tr key={i}>
                    <td>{item.classname}</td>
                    <td>{item.group}</td>
                    <td>{item.teacher}</td>
                    <td><button onClick={() => this.deleteClass(item.classname)} className='btn btn-danger'>Delete</button></td>
                </tr>
            )
        });

        const renderOptions = this.state.groups.map((item, i) => {
            return (
                <option key={item.groupname} value={item.groupname}>{item.groupname}</option>
            )
        })

        return (
            <div>
                <div className='mt-4 new-class-container'>
                    <h2>Add New Class</h2>
                    <table>
                        <tbody>
                            <tr>
                                <td>Group:</td>
                                <td>
                                    <select onChange={this.setGroup} value={this.state.group} className='select-default'>
                                        <option key='00' value=''></option>
                                        {renderOptions? renderOptions : <option value=''></option>}
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td>Class name:</td>
                                <td><input type='text' value={this.state.className} onChange={this.setClassName} className='input-default' /></td>
                            </tr>
                            <tr>
                                <td>Teacher:</td>
                                <td><input type='text' value={this.state.teacher} onChange={this.setTeacherName} className='input-default' /></td>
                                <td><button onClick={this.postClass} className='btn btn-info ml-2'>Add Class</button></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div className='mt-4 classes-table-container'>
                    <table className='bordered-tbl'>
                        <caption>Classes</caption>
                        <thead>
                            <tr>
                                <th>Class Name</th>
                                <th>Group</th>
                                <th>Teacher</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            {this.state.classes? renderClasses : <tr><td>Loading...</td></tr>}
                        </tbody>
                    </table>
                </div>
            </div>
        )
    }
}

export default ClassList;