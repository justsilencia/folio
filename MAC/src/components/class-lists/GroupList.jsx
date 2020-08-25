import React, { Component } from 'react';
import '../../styles/classlists.css';

class GroupList extends Component {
    constructor(props) {
        super(props);

        this.state = {
            groups: [],
            newGroup: ''
        }

        this.populateGroups = this.populateGroups.bind(this);
        this.postGroup = this.postGroup.bind(this);
        this.deleteGroup = this.deleteGroup.bind(this);
        this.setGroup = this.setGroup.bind(this);
    }

    setGroup(e) {
        this.setState({newGroup: e.target.value});
    }

    componentDidMount() {
        this.populateGroups();
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

    postGroup() {
        if (this.state.className !== '' && this.state.teacher !== '') {
            fetch('http://localhost:4001/postgroup', {
                method: 'POST',
                headers: {
                  'Accept': 'application/json',
                  'Content-Type': 'application/json'
                },
                body: JSON.stringify({
                    groupname: this.state.newGroup
                })
            }).then(res => {
                return res.json();
            }).then(results => {
                this.setState({newGroup: ''});
                this.populateGroups();
            });
        } else {
            alert('Enter a class and teacher.');
        }
    }

    deleteGroup(delGroup) {
        fetch('http://localhost:4001/deletegroup/' + delGroup, {
                method: 'POST',
                headers: {
                  'Accept': 'application/json',
                  'Content-Type': 'application/json'
                }
              }).then(res => {
                  return res.json();
              }).then(json => {
                  this.populateGroups();
              });
    }


    render() {

        const renderGroups = this.state.groups.map((item, i) => {
            return (
                <tr key={item.groupname}>
                    <td>{item.groupname}</td>
                    <td><button onClick={() => this.deleteGroup(item.groupname)} className='btn btn-danger'>Delete</button></td>
                </tr>
            )
        });

        return (
            <div>
                <div className='mt-4'>
                    <table>
                        <tbody>
                            <tr>
                                <td>New group:</td>
                                <td><input type='text' value={this.state.newGroup} onChange={this.setGroup} className='input-default' /></td>
                                <td><button onClick={this.postGroup} className='btn btn-info ml-2'>Add Group</button></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div className='mt-4'>
                    <table className='bordered-tbl'>
                        <caption>Groups</caption>
                        <thead>
                            <tr>
                                <th>Group Name</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            {this.state.groups? renderGroups : <tr><td>Loading...</td></tr>}
                        </tbody>
                    </table>
                </div>
            </div>
        )
    }
}

export default GroupList;