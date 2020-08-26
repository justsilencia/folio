import React, { Component } from 'react';
import CommentInput from './CommentInput.jsx';
import CommentHeader from './CommentHeader.jsx';
import CommentBody from './CommentBody.jsx';

 class Comments extends Component {
        constructor(props) {
            super(props);

            this.state = {
                comments: [],
                newComment: {
                    txt: false,
                    blurtId: false
                }
            }

            this.setNewComment = this.setNewComment.bind(this);
            this.postComment = this.postComment.bind(this);
        }

        setNewComment(input, id) {
            this.setState({newComment: {txt: input, blurtId: id}});
        }

        postComment() {
            if (this.state.newComment.txt) {
                // Use fetch to post comment here.
                fetch('/postcomment', {
                    method: 'POST',
                    headers: {
                      'Accept': 'application/json',
                      'Content-Type': 'application/json'
                    },
                    body: JSON.stringify({
                      comment: {
                        txt: this.state.newComment.txt,
                        blurtId: this.state.newComment.blurtId,
                        blurtAuthor: this.props.blurtAuthor
                      }
                    })
                  })
                  .then(res => res.json())
                  .then(data => {
                      if (data.success) {
                          this.setState(prevState => ({
                              comments: [data.commentData, ...prevState.comments]
                          }), this.props.incCommentCount());
                      } else {
                          if (data.spam) {
                              alert('Please don\'t be a spammer.. Wait a bit.');
                          }
                      }
                  })
            }
            this.setState({newComment: false});
        }

        componentDidMount() {
            const blurtId = this.props.blurtId;
            fetch('/getComments/' + blurtId, {
                method: 'GET',
                headers: {
                    'Accept': 'application/json',
                    'Content-Type': 'application/json'
                }
            }).then(res => res.json())
            .then(data => {
                this.setState({comments: data});
            });
        }

        render() {
            return (
                <div className="burt-comments-container">
                    <div className="new-blurt-comment">
                        <CommentInput postComment={this.postComment} setNewComment={this.setNewComment} {...this.props} />
                    </div>
                    { this.state.comments.length !== 0? (
                    <div className="blurt-comments">
                    {
                        this.state.comments.map((item, i) => (
                            <div key={i}>
                                <CommentHeader comment={item} />
                                <CommentBody text={item.text} />
                            </div>
                        ))
                    }
                    </div>):<></>
                    }
                    
                </div>
            ) 
        }
}

export default Comments;


