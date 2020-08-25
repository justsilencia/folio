import React, { Component } from 'react';

class Random extends Component {

    constructor(props) {
        super(props);

        this.state = {
            dirPath: ''
        }

        this.setPath = this.setPath.bind(this);
        this.makeRandom = this.makeRandom.bind(this);
    }

    setPath(e) {
        this.setState({dirPath: e.target.value});
    }

    makeRandom() {
        fetch('http://localhost:4001/randomize', {
            method: 'POST',
            headers: {
                'Accept': 'application/json',
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({
                dirname: JSON.stringify(this.state.dirPath)
            })
        }).then((res) => {
                return res.json;
            }).then(data => {
                console.log(data);
            });
    }

    render() {
        return (
            <div>
                <br /><br /><br />
                <input type='text' 
                onChange={this.setPath}
                 placeholder="Enter path bitch..." 
                 value={this.state.dirPath}
                 type='file'
                 webkitdirectory="" directory="" />
            <button className='btn btn-info' onClick={this.makeRandom}>Randomize my shit please</button>
            </div>
        );
    }
}

export default Random;