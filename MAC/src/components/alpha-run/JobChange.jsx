import React, { Component } from 'react';
import '../../styles/jobchangemodal.css';

class JobChange extends Component {

    constructor(props) {
        super(props);

        this.state = {
            jobCodes: [],
            newJobAM: '',
            newJobPM: '',
            reason: ''
        }

        this.setAMJob = this.setAMJob.bind(this);
        this.setPMJob = this.setPMJob.bind(this);
        this.setReason = this.setReason.bind(this);
    }

    componentDidMount() {
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

    setAMJob(e) {
        this.setState({newJobAM: e.target.value});
    }

    setPMJob(e) {
        this.setState({newJobPM: e.target.value});
    }

    setReason(e) {
        this.setState({reason: e.target.value});
    }

    render() {

        const amJobs = this.state.jobCodes.filter((item) => {
            return (item.shift === 'AM' || item.shift === 'ALL');
        });
        const pmJobs = this.state.jobCodes.filter((item) => {
            return (item.shift === 'PM' || item.shift === 'ALL');
        });

        const renderAMOptions = amJobs.map((item, i) => {
            return (
                <option key={i} value={item.jobcode}>{item.jobcode}</option>
            )
        });

        const renderPMOptions = pmJobs.map((item, i) => {
            return (
                <option key={i} value={item.jobcode}>{item.jobcode}</option>
            )
        });
    
        return (
            <div className='mt-4 job-change-modal'>
                <center>
                    <h2>{this.props.info.dc}</h2>
                    <h3>{this.props.info.lastname + ', ' + this.props.info.firstname}</h3>
                    <br />
                    <h3>AM Job</h3>
                    <select onChange={this.setAMJob} className='select-default' value={this.state.newJobAM}>
                        <option value=''></option>
                        {renderAMOptions}
                    </select>
                    <br /><br />
                    <h3>PM Job</h3>
                    <select onChange={this.setPMJob} className='select-default' value={this.state.newJobPM}>
                        <option value=''></option>
                        {renderPMOptions}
                    </select>
                    <br /><br />
                    <h3>Reason</h3>
                    <textarea value={this.state.reason} onChange={this.setReason} col='5' />
                    <br /><br />
                    <a className='btn btn-dark' target='_blank' href={'http://localhost:4001/createjobchange/' + 
                    (this.state.newJobAM? this.state.newJobAM : 'na') + 
                    '/' + 
                    (this.state.newJobPM? this.state.newJobPM : 'na') +
                    '/' + 
                    this.props.info.firstname +
                    '/' + 
                    this.props.info.lastname +
                    '/' + 
                    this.props.info.dc +
                    '/' + 
                    this.props.info.jobam +
                    '/' + 
                    this.props.info.jobpm +
                    '/' + 
                    (this.state.reason? this.state.reason : 'na') }>Create</a>
                </center>
            </div>
        );
    }
}

export default JobChange;
