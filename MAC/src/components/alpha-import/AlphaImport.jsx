import React, { Component } from 'react';
import axios from 'axios';

class AlphaImport extends Component {

    constructor(props) {
        super(props);

        this.handleAlphaUpload = this.handleAlphaUpload.bind(this);
        this.click307File = this.click307File.bind(this);

        this.inputRefAlpha = React.createRef();
    }

    click307File() {
        this.inputRefAlpha.current.click();
    }

    handleAlphaUpload(e) {
        if (e.target.files) {

            const dataForm = new FormData();
            for (let i=0; i<e.target.files.length; i++) {
                dataForm.append('file', e.target.files[i]);
            }
            
            axios.post('http://localhost:4001/importalpha', dataForm)
                    .then(res => {
                        console.log(res);
                        if (res.data === 'ok') {
                            alert('Alpha update complete.');
                        }
                    })
                    .catch(err => {
                        console.log(err)
                        alert('There was an error importing the alpha run.');
                    });

        }
    }

    render() {
        return (
            <div className='mt-4'>
                <div>
                    <h2>Import Alpha Run(s)</h2>
                    <input multiple onChange={this.handleAlphaUpload} ref={this.inputRefAlpha} className='hidden' type='file' />
                    <button onClick={this.click307File} className='btn btn-info'>Get Alpha-Run PDF(s)</button>
                </div>
            </div>
        );
    }
}

export default AlphaImport;