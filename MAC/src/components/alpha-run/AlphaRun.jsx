import React, { Component } from 'react';
import '../../styles/alpharun.css';
import RowResult from './RowResult.jsx';

class AlphaRun extends Component {
    constructor(props) {
        super(props);

        this.state = {
            searchVal: '',
            searchResults: [],
            classes: []
        }

        this.searchAplha = this.searchAplha.bind(this);
        this.setSearchVal = this.setSearchVal.bind(this);
        this.populateClasses = this.populateClasses.bind(this);
    }

    componentDidMount() {
        this.populateClasses();
    }

    setSearchVal(e) {
        this.setState({searchVal: e.target.value});
    }

    searchAplha(e) {
        if (e.keyCode === 13) {
            
            let search = this.state.searchVal;
            
            if (search !== '') {
                search = search.toUpperCase();
                fetch('http://localhost:4001/getalpha/' + search, {
                    method: 'GET',
                    headers: {
                        'Accept': 'application/json',
                        'Content-Type': 'application/json'
                    }
                }).then(res => {
                    return res.json();
                }).then(data => {
                    this.setState({searchResults: data, searchVal: ''});
                });
            } else {
                alert('Enter something in the search field.');
            }
        }
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

        const renderRows = this.state.searchResults.map((item, i) => {
            if (!item.classam) {
                item.classam = 'UUU';
            }
            if (!item.classpm) {
                item.classpm = 'UUU';
            }
            return (
                <RowResult rowNum={i+1} jobChange={true} key={item.dc} classOptions={renderClasses} row={item} rowKey={i} />
            )
        });

        return (
            <div className='mt-4'>
                <div>
                    <input onChange={this.setSearchVal} value={this.state.searchVal} 
                    onKeyUp={this.searchAplha} className='input-default' type='text' 
                    id='alphasearch' placeholder='DC#, Last Name, or Job Code...' />
                </div>
                <div className='mt-4 alpha-table-container'>
                    <table>
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
                                <th>Job Change</th>
                            </tr>
                        </thead>
                        <tbody>
                            {this.state.searchResults.length>0?renderRows:<tr><td>No results.</td></tr>}
                        </tbody>
                    </table>
                </div>
            </div>
        );
    }
}

export default AlphaRun;

