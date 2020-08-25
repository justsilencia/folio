import React, { Component } from 'react';
import ReactExport from "react-data-export";

const ExcelFile = ReactExport.ExcelFile;
const ExcelSheet = ReactExport.ExcelFile.ExcelSheet;
const ExcelColumn = ReactExport.ExcelFile.ExcelColumn;

class ClassStudents extends Component {

    constructor(props) {
        super(props);

        this.state = {
            students: {
                AM: [],
                PM: []
            },
            excelData: [],
            excelTabeData: []
        }

        this.formatExcelData = this.formatExcelData.bind(this);
    }

    componentDidMount() {
        fetch('http://localhost:4001/getclassstudents/' + this.props.match.params.classname, {
                method: 'GET',
                headers: {
                  'Accept': 'application/json',
                  'Content-Type': 'application/json'
                }
        }).then(res => {
            return res.json();
        }).then(results => {
            this.setState({students: results});
            this.formatExcelData(results);
        });
    }

    formatExcelData() {

        const formattedData = [];
        const formattedTabeData = [];

        // Tabe
        formattedTabeData.push({
            num: this.props.match.params.teacher
        });
        formattedTabeData.push({
            num: this.props.match.params.classname + ' - AM',
            dc: '',
            lastname: '',
            firstname: ''
        });

        formattedTabeData.push({
            num: '#',
            dc: 'DC',
            lastname: 'Last Name',
            firstname: 'First Name',
            housing: 'Housing',
            lr: 'LR',
            lm1: 'LM1',
            lm2: 'LM2',
            ll: 'LL',
            r1: 'R1',
            r2: 'R2',
            m1: 'M1',
            m2: 'M2',
            la: 'LA'
        });

        this.state.students.AM.forEach((item, i) => {
            item.num = i+1;
            formattedTabeData.push(item);
        });

        formattedTabeData.push({
            dc: '',
            lastname: '',
            firstname: ''
        });

        formattedTabeData.push({
            num: this.props.match.params.teacher
        });

        formattedTabeData.push({
            num: this.props.match.params.classname + ' - PM',
            dc: '',
            lastname: '',
            firstname: ''
        });

        formattedTabeData.push({
            num: '#',
            dc: 'DC',
            lastname: 'Last Name',
            firstname: 'First Name',
            housing: 'Housing',
            lr: 'LR',
            lm1: 'LM1',
            lm2: 'LM2',
            ll: 'LL',
            r1: 'R1',
            r2: 'R2',
            m1: 'M1',
            m2: 'M2',
            la: 'LA'
        });

        this.state.students.PM.forEach((item, i) => {
            item.num = i+1;
            formattedTabeData.push(item);
        });

        this.setState({excelTabeData: formattedTabeData});


        // No Tabe
        formattedData.push({
            num: this.props.match.params.teacher
        });

        formattedData.push({
            num: this.props.match.params.classname + ' - AM',
            dc: '',
            lastname: '',
            firstname: ''
        });

        formattedData.push({
            num: '#',
            dc: 'DC',
            lastname: 'Last Name',
            firstname: 'First Name',
            housing: 'Housing'
        });

        this.state.students.AM.forEach((item, i) => {
            item.num = i+1;
            formattedData.push(item);
        });

        formattedData.push({
            dc: '',
            lastname: '',
            firstname: ''
        });

        formattedData.push({
            num: this.props.match.params.teacher
        });

        formattedData.push({
            num: this.props.match.params.classname + ' - PM',
            dc: '',
            lastname: '',
            firstname: ''
        });

        formattedData.push({
            num: '#',
            dc: 'DC',
            lastname: 'Last Name',
            firstname: 'First Name',
            housing: 'Housing'
        });

        this.state.students.PM.forEach((item, i) => {
            item.num = i+1;
            formattedData.push(item);
        });

        this.setState({excelData: formattedData});
    }

    render() {

        const renderAMStudents = this.state.students.AM.map((item, i) => {
            return (
                <tr key={i}>
                    <td>{i+1}</td>
                    <td>{item.dc}</td>
                    <td>{item.lastname}, {item.firstname}</td>
                    <td>{item.housing}</td>
                </tr>
            )
        });

        const renderPMStudents = this.state.students.PM.map((item, i) => {
            return (
                <tr key={i}>
                    <td>{i+1}</td>
                    <td>{item.dc}</td>
                    <td>{item.lastname}, {item.firstname}</td>
                    <td>{item.housing}</td>
                </tr>
            )
        });

        return (
            <div>
                <br />
                <center>
                    {
                        this.state.excelData? 
                        <ExcelFile element={<button className='btn btn-info'>Download Tabe Checklist Spreadsheet</button>}>
                            <ExcelSheet data={this.state.excelTabeData} name={this.props.match.params.classname + '-Tabe'}>
                                <ExcelColumn label="" value="num"/>
                                <ExcelColumn label="" value="dc"/>
                                <ExcelColumn label="" value="lastname"/>
                                <ExcelColumn label="" value="firstname"/>
                                <ExcelColumn label="" value="housing"/>
                                <ExcelColumn label="" value="lr"/>
                                <ExcelColumn label="" value="lm1"/>
                                <ExcelColumn label="" value="lm2"/>
                                <ExcelColumn label="" value="ll"/>
                                <ExcelColumn label="" value="r1"/>
                                <ExcelColumn label="" value="r2"/>
                                <ExcelColumn label="" value="m1"/>
                                <ExcelColumn label="" value="m2"/>
                                <ExcelColumn label="" value="la"/>
                            </ExcelSheet>
                        </ExcelFile>
                        : ''
                    }
                    <br /><br />
                    {
                        this.state.excelData? 
                        <ExcelFile element={<button className='btn btn-info'>Download Class Spreadsheet</button>}>
                            <ExcelSheet data={this.state.excelData} name={this.props.match.params.classname}>
                                <ExcelColumn label="" value="num"/>
                                <ExcelColumn label="" value="dc"/>
                                <ExcelColumn label="" value="lastname"/>
                                <ExcelColumn label="" value="firstname"/>
                                <ExcelColumn label="" value="housing"/>
                            </ExcelSheet>
                        </ExcelFile>
                        : ''
                    }
                    <br /><br />
                    <h1>{this.props.match.params.classname} AM STUDENTS</h1>
                    <table className='table-bordered'>
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>DC#</th>
                                <th>Name</th>
                                <th>Housing</th>
                            </tr>
                        </thead>
                        <tbody>
                            {renderAMStudents? renderAMStudents : <tr><td>Loading...</td></tr>}
                        </tbody>
                    </table>
                    <br /><br />
                    <h1>{this.props.match.params.classname} PM STUDENTS</h1>
                    <table className='table-bordered'>
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>DC#</th>
                                <th>Name</th>
                                <th>Housing</th>
                            </tr>
                        </thead>
                        <tbody>
                            {renderPMStudents? renderPMStudents : <tr><td>Loading...</td></tr>}
                        </tbody>
                    </table>
                </center>
            </div>
        );
    }
}

export default ClassStudents;