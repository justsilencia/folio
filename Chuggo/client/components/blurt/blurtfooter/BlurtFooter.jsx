import React, { Component } from 'react';
import Upvote from '../upvote/Upvote.jsx';
import Comments from '../comments/Comments.jsx';

class BlurtFooter extends Component {
    constructor(props) {
        super(props);

        this.state = {
            commentsVisible: false,
            commentCount: 0
        }
        this.showComments = this.showComments.bind(this);
        this.incCommentCount = this.incCommentCount.bind(this);
    }

    showComments() {
        this.setState(prevState => ({commentsVisible: !prevState.commentsVisible}));
    }

    incCommentCount() {
        this.setState(prevState => ({commentCount: prevState.commentCount+1}));
    }

    componentDidMount() {
        const blurtId = this.props.blurtId;
        
        fetch('/getCommentCount/' + blurtId, {
            method: 'GET',
            headers: {
                'Accept': 'application/json',
                'Content-Type': 'application/json'
            }
        }).then(res => res.json())
        .then(data => {
            this.setState({commentCount: data});
        });
    }

    render() {
        return (
            <div>
                <div className="blurt-panel-footer">
                <Upvote {...this.props} />
                <a onClick={this.showComments} className='btn-footer btn-blurt-footer-comment'>
                   <i className='fas fa-2x fa-comment'></i>
                </a>
                <span className='footer-meta-stat'>
                    {
                        this.state.commentCount
                    }
                </span>
                <a className='btn-footer btn-blurt-footer-challenge'>
                   <i className='fas fa-2x fa-fist-raised'></i>
                </a>
                {
                this.props.currentUser? '': 
                    <>
                        <span className='footer-meta-stat'>0</span>
                        <a className='btn-footer btn-blurt-footer-watch'>
                            <i className='fas fa-2x fa-eye'></i>
                        </a>
                    </>
                }
                </div>
                {
                    this.state.commentsVisible? 
                    <Comments {...this.props} 
                            incCommentCount={this.incCommentCount}
                    /> 
                    : ''
                }
            </div>
        );
    }
}

export default BlurtFooter;