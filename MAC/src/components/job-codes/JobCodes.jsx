import React, { Component } from 'react';
import '../../styles/jobcodes.css';

class JobCodes extends Component {
    constructor(props) {
        super(props);

        this.state = {
            jobCodes: [],
            newCode: '',
            newDesc: '',
            assocClass: '',
            shift: 'AM'
        }

        this.postJobCode = this.postJobCode.bind(this);
        this.setCodeVal = this.setCodeVal.bind(this);
        this.setDescVal = this.setDescVal.bind(this);
        this.setClassVal = this.setClassVal.bind(this);
        this.setShiftVal = this.setShiftVal.bind(this);
        this.populateJobCodes = this.populateJobCodes.bind(this);
        this.deleteJobCode = this.deleteJobCode.bind(this);
    }

    populateJobCodes() {
        fetch('http://localhost:4001/getjobs', {
                method: 'GET',
                headers: {
                  'Accept': 'application/json',
                  'Content-Type': 'application/json'
                }
        }).then(res => {
            return res.json();
        }).then(results => {
            this.setState({jobCodes: results});
        });
    }

    componentDidMount() {
        this.populateJobCodes();
    }

    setCodeVal(e) {
        this.setState({newCode: e.target.value});
    }

    setDescVal(e) {
        this.setState({newDesc: e.target.value});
    }

    setClassVal(e) {
        this.setState({assocClass: e.target.value});
    }

    setShiftVal(e) {
        this.setState({shift: e.target.value});
    }

    postJobCode() {
        if (this.state.newCode !== '' && this.state.newDesc !== '') {
            fetch('http://localhost:4001/postjobcode', {
                method: 'POST',
                headers: {
                  'Accept': 'application/json',
                  'Content-Type': 'application/json'
                },
                body: JSON.stringify({
                  jobcode: this.state.newCode,
                  jobdesc: this.state.newDesc,
                  assocclass: this.state.assocClass,
                  shift: this.state.shift  
                })
              }).then(res => {
                  return res.json();
              }).then(json => {
                  this.setState({newCode: '', newDesc: '', assocClass: ''});
                  this.populateJobCodes();
              });
        } else {
            alert('Insert a value into job code and job description.');
        }
    }

    deleteJobCode(code) {
        fetch('http://localhost:4001/deletejobcode/' + code, {
                method: 'POST',
                headers: {
                  'Accept': 'application/json',
                  'Content-Type': 'application/json'
                }
              }).then(res => {
                  return res.json();
              }).then(json => {
                  this.setState({newCode: '', newDesc: ''});
                  this.populateJobCodes();
              });
    }

    render() {
        const amRows = this.state.jobCodes.filter((item) => {
            return (item.shift === 'AM' || item.shift === 'ALL');
        });
        const pmRows = this.state.jobCodes.filter((item) => {
            return (item.shift === 'PM' || item.shift === 'ALL');
        });

        const renderAMRows = amRows.map((item, i) => {
            return (
                <tr key={i}>
                    <td>{item.jobcode}</td>
                    <td>{item.jobdesc}</td>
                    <td>{item.class}</td>
                    <td><button className='btn btn-danger' onClick={() => this.deleteJobCode(item.jobcode)}>Delete</button></td>
                </tr>
            )
        });

        const renderPMRows = pmRows.map((item, i) => {
            return (
                <tr key={i}>
                    <td>{item.jobcode}</td>
                    <td>{item.jobdesc}</td>
                    <td>{item.class}</td>
                    <td><button className='btn btn-danger' onClick={() => this.deleteJobCode(item.jobcode)}>Delete</button></td>
                </tr>
            )
        });

        return (
            <div>
                <div className='mt-4 new-job-container'>
                        <h2>Add New Job</h2>
                        <table>
                            <tbody>
                            <tr>
                                <td>Shift:</td>
                                <td>
                                    <select className='select-default' onChange={this.setShiftVal} value={this.state.shift}>
                                        <option value='AM'>AM</option>
                                        <option value='PM'>PM</option>
                                        <option value='ALL'>All Day</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td>Class:</td>
                                <td><input value={this.state.assocClass} onChange={this.setClassVal} className='input-default' placeholder='Optional..' /></td>
                            </tr>
                            <tr>
                                <td>Job Code:</td>
                                <td><input value={this.state.newCode} className='input-default' onChange={this.setCodeVal} type='text' /></td>
                            </tr>
                            <tr>
                                <td>Job Desc:</td>
                                <td><input value={this.state.newDesc} className='input-default' onChange={this.setDescVal} type='text' /></td>
                                <td><button onClick={this.postJobCode} className='btn btn-info ml-2'>Add Job Code</button></td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                <div className='row mt-4 jobs-table-container'>
                    <div className='col-6 mt-4'>
                        <table>
                            <caption>AM Job Codes</caption>
                            <thead>
                                <tr>
                                    <th>Job Code</th>
                                    <th>Descriptive Name</th>
                                    <th>Assoc. Class</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                {this.state.jobCodes? renderAMRows : <tr><td>Loading...</td></tr>}
                            </tbody>
                        </table>
                    </div>

                    <div className='col-6 mt-4'>
                        <table>
                            <caption>PM Job Codes</caption>
                            <thead>
                                <tr>
                                    <th>Job Code</th>
                                    <th>Descriptive Name</th>
                                    <th>Assoc. Class</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                {this.state.jobCodes? renderPMRows : <tr><td>Loading...</td></tr>}
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        );
    }
}

export default JobCodes;

