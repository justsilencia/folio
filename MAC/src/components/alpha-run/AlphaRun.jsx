import React, { Component } from 'react';
import '../../styles/alpharun.css';

class AlphaRun extends Component {
    constructor(props) {
        super(props);

        this.state = {
            searchVal: '',
            searchResults: []
        }

        this.searchAplha = this.searchAplha.bind(this);
        this.setSearchVal = this.setSearchVal.bind(this);
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

    render() {

        const renderRows = this.state.searchResults.map((item, i) => {
            return (
                <tr key={i}>
                    <td>{item.dc}</td>
                    <td>{item.lastname}, {item.firstname}</td>
                    <td>{item.housing}</td>
                    <td>{item.jobam}</td>
                    <td>{item.jobpm}</td>
                    <td><a href='/alphaimport'>Modify Info</a></td>
                </tr>
            )
        });

        return (
            <div className='mt-4'>
                <div>
                    <input onChange={this.setSearchVal} value={this.state.searchVal} onKeyUp={this.searchAplha} className='input-default' type='text' id='alphasearch' placeholder='Enter last name or dc#...' />
                </div>
                <div className='mt-4 alpha-table-container'>
                    <table>
                        <thead>
                            <tr>
                                <th>DC#</th>
                                <th>Name</th>
                                <th>Housing</th>
                                <th>AM Job</th>
                                <th>PM Job</th>
                                <th>Modify</th>
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

