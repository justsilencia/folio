import React, { Component } from 'react';
import JobChange from './JobChange.jsx';

class RowResult extends Component {
    
    constructor(props) {
        super(props);

        this.state = {
            assignedAMClass: '',
            assignedPMClass: '',
            toggleJobChange: false,
            toggleBtnClass: 'btn-info'
        }

        this.setAssignedAMClass = this.setAssignedAMClass.bind(this);
        this.setAssignedPMClass = this.setAssignedPMClass.bind(this);
        this.updateAMClass = this.updateAMClass.bind(this);
        this.updatePMClass = this.updatePMClass.bind(this);
        this.jobChangeToggle = this.jobChangeToggle.bind(this);
    }

    componentDidMount() {
        if (this.props.row.classam) {
            this.setAssignedAMClass(this.props.row.classam);
        } 
        if (this.props.row.classpm) {
            this.setAssignedPMClass(this.props.row.classpm);
        }
    }

    setAssignedAMClass(assClass) {
        this.setState({assignedAMClass: assClass});
    }

    setAssignedPMClass(assClass) {
        this.setState({assignedPMClass: assClass});
    }

    updateAMClass(e) {
        const dc = this.props.row.dc;
        const newClass = e.target.value;
        
        fetch('http://localhost:4001/updatestuclass', {
                method: 'POST',
                headers: {
                  'Accept': 'application/json',
                  'Content-Type': 'application/json'
                },
                body: JSON.stringify({
                    updateAMClass: newClass,
                    dc: dc
                })
              }).then(res => {
                  return res.json();
              }).then(json => {
                  this.setAssignedAMClass(newClass);
              });
    }

    updatePMClass(e) {
        const dc = this.props.row.dc;
        const newClass = e.target.value;
        
        fetch('http://localhost:4001/updatestuclass', {
                method: 'POST',
                headers: {
                  'Accept': 'application/json',
                  'Content-Type': 'application/json'
                },
                body: JSON.stringify({
                    updatePMClass: newClass,
                    dc: dc
                })
              }).then(res => {
                  return res.json();
              }).then(json => {
                  this.setAssignedPMClass(newClass);
              });
    }

    jobChangeToggle() {
        this.setState({toggleJobChange: !this.state.toggleJobChange});
        if (this.state.toggleBtnClass === 'btn-info') {
            this.setState({toggleBtnClass: 'btn-warning'});
        } else {
            this.setState({toggleBtnClass: 'btn-info'});
        }
    }
    
    render() {

        return (
            <tr key={this.props.rowKey}>
                    <td>{this.props.rowNum}</td>
                    <td>{this.props.row.dc}</td>
                    <td>{this.props.row.lastname}, {this.props.row.firstname}</td>
                    <td>{this.props.row.housing}</td>
                    <td>{this.props.row.jobam}</td>
                    <td>{this.props.row.jobpm}</td>
                    <td>
                        {
                            this.state.assignedAMClass? 
                                <select onChange={this.updateAMClass} value={this.state.assignedAMClass}>
                                    <option key='00' value={this.state.assignedPMClass}>{this.state.assignedAMClass}</option>
                                    {this.props.classOptions}
                                </select>
                                :
                                <select onChange={this.updateAMClass} value=''>
                                    <option key='00' value=''></option>
                                    {this.props.classOptions}
                                </select>
                        }
                    </td>
                    <td>
                        {
                            this.state.assignedPMClass? 
                                <select onChange={this.updatePMClass} value={this.state.assignedPMClass}>
                                    <option key='00' value={this.state.assignedPMClass}>{this.state.assignedPMClass}</option>
                                    {this.props.classOptions}
                                </select>
                                :
                                <select onChange={this.updatePMClass} value=''>
                                    <option key='00' value=''></option>
                                    {this.props.classOptions}
                                </select>
                        }
                    </td>
                    {
                        this.props.jobChange?
                        <td className='relcell'>
                            <button onClick={this.jobChangeToggle} className={'btn ' + this.state.toggleBtnClass}>Job Change</button>
                            {
                                this.state.toggleJobChange? <JobChange info={this.props.row} /> : ''
                            }
                        </td>
                        :<></>
                    }
                </tr>
        );
    }
}

export default RowResult;
