import React, { Component } from 'react';
import { UpvoteBtn, UpvoteCount } from './Upvote-ui.jsx';
import {upvoteBlurtapi} from '../../api/blurt';

class Upvote extends Component {
    constructor(props) {
        super(props);
        
        this.upvoteBlurt = this.upvoteBlurt.bind(this);
    }
    
    upvoteBlurt() {
        upvoteBlurtapi(this.props.blurtId).then(data => {
            this.props.handleUpvoteState(this.props.blurtIndex, data.success);
        });
    }

    render() {
        return (
            <>
                <UpvoteBtn upvoteBlurt={this.upvoteBlurt} />
                <UpvoteCount voteCount={this.props.voteCount}/>
            </>
        );
    }
}

export default Upvote;