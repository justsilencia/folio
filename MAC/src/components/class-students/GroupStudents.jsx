import React, { Component } from 'react';
import ReactExport from "react-data-export";

const ExcelFile = ReactExport.ExcelFile;
const ExcelSheet = ReactExport.ExcelFile.ExcelSheet;
const ExcelColumn = ReactExport.ExcelFile.ExcelColumn;

class GroupStudents extends Component {

    constructor(props) {
        super(props);

        this.state = {
            classStudents: [],
            excelData: []
        }

        this.formatExcelData = this.formatExcelData.bind(this);
    }

    componentDidMount() {
        fetch('http://localhost:4001/getgroupstudents/' + this.props.match.params.groupname, {
                method: 'GET',
                headers: {
                  'Accept': 'application/json',
                  'Content-Type': 'application/json'
                }
        }).then(res => {
            return res.json();
        }).then(results => {
            results.sort(function(a, b) {
                return (a.classname < b.classname)? -1 : 1;
            });

            this.setState({classStudents: results});
            this.formatExcelData();
        });
    }

    formatExcelData() {
        const formattedData = [];

        this.state.classStudents.forEach((item) => {
            
            formattedData.push({
                num: item.classname + ' - ' + item.shift,
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

            item.students.forEach((item, i) => {
                item.num = i+1;
                formattedData.push(item);
            });

            formattedData.push({
                dc: '',
                lastname: '',
                firstname: ''
            });
        });

        this.setState({excelData: formattedData});
    }

    render() {

        const renderedClassLists = this.state.classStudents.map((obj, i) => {
            return (
                <div key={i}>
                    <h1>{obj.classname} {obj.shift} STUDENTS</h1>
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
                            {
                                obj.students.map((item, i) => {
                                    return (
                                        <tr key={i}>
                                            <td>{i+1}</td>
                                            <td>{item.dc}</td>
                                            <td>{item.lastname}, {item.firstname}</td>
                                            <td>{item.housing}</td>
                                        </tr>
                                    )
                                })
                            }
                        </tbody>
                    </table>
                    <br /><br />
                </div>
            )
        })

        return (
            <div className='mt-3'>
                <center>
                    {
                        this.state.excelData? 
                        <ExcelFile element={<button className='btn btn-info'>Download Spreadsheet</button>}>
                            <ExcelSheet data={this.state.excelData} name={this.props.match.params.groupname}>
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
                    {renderedClassLists}
                </center>
            </div>
        );
    }
}

export default GroupStudents;