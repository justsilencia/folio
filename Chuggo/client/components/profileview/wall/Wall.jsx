import React, { Component } from 'react';
import BlurtInput from '../../BlurtInput.jsx';
import {validateImgFileType, validateImgSize} from '../../utils/ValidateImgFile';
import blurtapi from '../../api/blurt.js';
import LazyBlurtPanel from '../../blurt/LazyBlurtLoader.jsx';
import utils from '../../utils/RegExes';

class Wall extends Component {
  constructor(props) {
    super(props);

    this.state = {
      blurts: [],
      newpost: '',
      hashtags: [],
      blurtImg: false,
      blurtsFetching: true,
      skipDb: 1
    };
  
    this.SetBlurt = this.SetBlurt.bind(this);
    this.SubmitBlurt = this.SubmitBlurt.bind(this);
    this.AttachBlurtImg = this.AttachBlurtImg.bind(this);
    this.mountMoreBlurts = this.mountMoreBlurts.bind(this);
    this.populateBlurts = this.populateBlurts.bind(this);
  }

  DetachBlurtImg() {
    $('#blurt-base64').remove();
    $('#blurt-img-container').removeClass('blurt-img-container').addClass('hide');
  }

  AttachBlurtImg() {
    const $ImgEl = $('#BlurtImgFile');
    $ImgEl.trigger('click');
    $ImgEl.on('change.1', () => {
      const imgel = document.getElementById('BlurtImgFile');
      // Check file size.
      if(validateImgSize(imgel.files[0])) {
        const reader = new FileReader();
        reader.onloadend = (e) => {
          if (validateImgFileType(e.target.result)) {
            $('#blurt-base64').remove();
          
            // Sets image src to the value of file input.
            this.setState(prevState => ({
              blurts: [...prevState.blurts],
              newpost: prevState.newpost,
              blurtImg: e.target.result
            }));
            const $imgel = $('<img id="blurt-base64" src=' + e.target.result + '>');
            $('#blurt-img-container').removeClass('hide').addClass('blurt-img-container').append($imgel);
        } else {
            $('#blurt-base64').remove();
            $('#blurt-img-container').removeClass('blurt-img-container').addClass('hide');
            alert('Please choose either a  .jpg  .jpeg  or  .png image type.');
        }
        imgel.value = ''; 
      }
      reader.readAsDataURL(imgel.files[0]);
      } else {
        alert('Image size must be less than 2MB.');
      }
      $ImgEl.off('change.1');
    });
  }

  SetBlurt(blurtTxt) {
    this.setState({newpost: blurtTxt });
  }

  SubmitBlurt(e) {
    this.setState({blurtsFetching: true});
    e.preventDefault();

    const hashtags = this.state.newpost.match(utils.ValidateHashtag);
    const mentions = this.state.newpost.match(utils.ValidateMention);

    const newBlurt = {
      txt: this.state.newpost,
      img: this.state.blurtImg,
      hashtags: hashtags,
      mentions: mentions
    }
    
    blurtapi.postBlurt(newBlurt)
    .then(() => {
      const blurtElem = document.getElementById('ez-emoji-input');
      blurtElem.innerHTML = '';
      this.setState({newpost: ''});
      this.populateBlurts();
      this.DetachBlurtImg();
    })
    .catch(err => console.log(err));
  }

  mountMoreBlurts() {
        blurtapi.getBlurts(this.state.skipDb)
        .then(data => {
            // Append blurt data to state.
            this.setState(prevState => ({
                blurtsFetching: false,
                blurts: [...prevState.blurts, ...data],
                skipDb: prevState.skipDb + 1
            }));
        });
  }
  
  populateBlurts() {
    blurtapi.getBlurts('false')
    .then(data => {
      this.setState({blurtsFetching: false});
      if (data.length > 0) {
        const appendDate = (data.length === 42 ? data[(data.length-1)].blurtDate : false);
        this.setState(prevState => ({
          blurts: data,
          newpost: prevState.newpost,
          blurtImg: prevState.blurtImg,
          appendDate: appendDate
        }));
      }
    })
    .catch(error => console.log('Error loading your blurts...' + error))
    .then (() => {
      // setTimeout(() => {
      //   $('#loader').remove();
      // }, 2000)
    });
  }

  componentDidMount() { 
    this.populateBlurts();
  }

  render () {
    const { blurtsFetching } = this.state;
    return (
      <div>
        <form id='blurtform' onSubmit={this.SubmitBlurt}>
          <a onClick={this.AttachBlurtImg} id="btn-blurtimg" className="btn btn-success">
              <i className="fas fa-camera"></i>
          </a>
          <input type='file' id='BlurtImgFile' className='hide' />
          <div id='blurt-img-container' className='hide'>
            <a onClick={this.DetachBlurtImg} className='btn btn-danger btn-detachimg'>
              <i className='fas fa-window-close' />
            </a>
          </div>
          <div id='new-blurt-container' className="new-blurt">
            <BlurtInput SetBlurt={this.SetBlurt} SubmitBlurt={this.SubmitBlurt} />
            <button type='submit' onClick={this.SubmitBlurt} className="btn btn-primary mt-1">
              Submit Blurt!
            </button>
          </div>
          <div className='blurt-wall'>
              {
                blurtsFetching?<div>Loading...</div>: (
                  <LazyBlurtPanel 
                    appendDate={true}
                    random={false}
                    blurts={this.state.blurts} 
                    lazyElement='lzywall'
                    apiMethod='user'
                    currentUser={true}
                    mountMoreBlurts={this.mountMoreBlurts}
                    />
                )
              }
             
          </div>
        </form>
      </div>
    )
  }
}

export default Wall;