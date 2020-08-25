import React, { Component } from 'react';
import RowResult from '../alpha-run/RowResult.jsx';

class Unassigned extends Component {

    constructor(props) {
        super(props);

        this.state = {
            unassigned: [],
            classes: []
        }

        this.populateClasses = this.populateClasses.bind(this);
    }

    componentDidMount() {
        fetch('http://localhost:4001/getunassigned', {
            method: 'GET',
            headers: {
              'Accept': 'application/json',
              'Content-Type': 'application/json'
            }
        }).then(res => {
            return res.json();
        }).then(results => {
            results.sort((a, b) => {
                return (a.lastname < b.lastname)? -1 : 1;
            });
            this.setState({unassigned: results});
        });
        this.populateClasses();
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

    render() {

        const renderClasses = this.state.classes.map((item, i) => {
            return (
                <option key={i} value={item.classname}>{item.classname}</option>
            )
        });

        const renderStu = this.state.unassigned.map((item, i) => {
            if (!item.classam) {
                item.classam = 'UUU';
            }
            if (!item.classpm) {
                item.classpm = 'UUU';
            }
            return (
                <RowResult rowNum={i+1} jobChange={false} classOptions={renderClasses} key={item.dc + i} row={item} rowKey={i} />
            )
        });

        return (
            <div className='mt-4'>
            <center>
                <h1>Unassigned Students</h1>
                    <table className='table-bordered'>
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>DC#</th>
                                <th>Name</th>
                                <th>Housing</th>
                                <th>AM Job</th>
                                <th>PM Job</th>
                                <th>AM Class</th>
                                <th>PM Class</th>
                            </tr>
                        </thead>
                        <tbody>
                            {renderStu? renderStu : <tr><td>Loading...</td></tr>}
                        </tbody>
                    </table>
            </center>
            </div>
        );
    }
}

export default Unassigned;