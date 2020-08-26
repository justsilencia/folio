import React, { Component } from 'react';
import blurtapi from '../../api/blurt.js';
import LazyBlurtsPanel from '../../blurt/LazyBlurtLoader.jsx';
import moment from 'moment';

class FollowingPanel extends Component {
    constructor(props) {
        super(props);

        this.state = {
            blurtsFetching: true,
            followingBlurts: [],
            randomize: false,
            appendDate: false,
            apiMethod: false
        }
        this.mountMoreBlurts = this.mountMoreBlurts.bind(this);
        this.handleUpvoteState = this.handleUpvoteState.bind(this);
    }

    handleUpvoteState(blurtIndex, success) {
        let blurts = [...this.state.followingBlurts],
            updatedBlurt = {...blurts[blurtIndex]};
        if (success) {updatedBlurt.vote.tally++;}
        blurts[blurtIndex] = updatedBlurt;
        this.setState({
            followingBlurts: blurts
        });
    }

    mountMoreBlurts() {
        // If appendDate isn't null (should never be the case), 
        // this means we can look for more blurts to append.
        
        if (this.state.appendDate) {
            // Call api and retrieve next set of 40 blurt records and add
            // to parent state.
            var blurtmethod;
            // Call random or following depending if a user is following anyone.
            
            switch (this.state.apiMethod) {
                case 'random':
                    blurtmethod = blurtapi.getRandomBlurts(this.state.appendDate);
                    break;
                case 'following':
                    blurtmethod = blurtapi.getFollowingBlurts(this.state.appendDate);
                    break;
                case 'user':
                    blurtmethod = blurtapi.getBlurts(this.state.lazyState.skipDb);
                    this.setState(prevState => ({
                        lazyState: {
                            lzyLoading: prevState.lazyState.lzyLoading,
                            skipCount: prevState.lazyState.skipCount,
                            skipInc: prevState.lazyState.skipInc,
                            skipDb: prevState.lazyState.skipDb + 1
                        },
                        renderedBlurts: prevState.renderedBlurts,
                        numberRendered: prevState.numberRendered
                    }));
                    break;
            }
               
            blurtmethod
            .then(data => {
                let appendDate = (data.length !== 0 ? data[(data.length-1)].blurtDate : false);
                let currMonth = new Date().getMonth();
                let appendMonth = new Date(appendDate).getMonth();

                // This checks to ensure that the last blurt in the initial fetch isn't from
                // the current month. If so, it must subtract 1 month in order to ensure that
                // the next query bases its dates on the preceding month.
                if (currMonth === appendMonth) {
                    appendDate = new Date(moment(appendDate).subtract(1, 'months').format());
                }
                // Append blurt data to state.
                this.setState(prevState => ({
                    blurtsFetching: false,
                    followingBlurts: [...prevState.followingBlurts, ...data],
                    randomize: prevState.randomize,
                    appendDate: appendDate
                }));
            });
        }
    }
    
    componentDidMount() {
        blurtapi.getFollowingBlurts(false).then(data => {
            
            // If user isn't following anyone with blurts, data (blurt) array will be empty. 
            // In this case, utilize getrandomblurts api.
            if (data.length > 0) {
                const appendDate = data[(data.length-1)].blurtDate;
                this.setState({
                    blurtsFetching: false,
                    followingBlurts: data,
                    randomize: false,
                    appendDate: appendDate,
                    apiMethod: 'following'
                });
            } else {
                blurtapi.getRandomBlurts(false).then(data => {
                    let appendDate = (data.length !== 0 ? data[(data.length-1)].blurtDate : false);
                    let currMonth = new Date().getMonth();
                    let appendMonth = new Date(appendDate).getMonth();

                    // This checks to ensure that the last blurt in the initial fetch isn't from
                    // the current month. If so, it must subtract 1 month in order to ensure that
                    // the next query bases its dates on the preceding month.
                    if (currMonth === appendMonth) {
                        appendDate = new Date(moment(appendDate).subtract(1, 'months').format());
                    }
                    
                    this.setState({
                        blurtsFetching: false,
                        followingBlurts: data,
                        randomize: true,
                        appendDate: appendDate,
                        apiMethod: 'random'
                    });
                });
            }
        });
    }

    render() {
        const {blurtsFetching} = this.state;
        return (
            <>
            <div className='following-box'>
                {
                    blurtsFetching?<div>Loading...</div>: (
                        <LazyBlurtsPanel
                        appendDate={this.state.appendDate}
                        random={this.state.randomize} 
                        blurts={this.state.followingBlurts} 
                        mountMoreBlurts={this.mountMoreBlurts}
                        handleUpvoteState={this.handleUpvoteState}
                        lazyElement='lzyfollowing'
                        apiMethod={this.state.apiMethod}
                        currentUser={false}
                        />
                    )
                }
            </div>
            </>
        )
    }
}

export default FollowingPanel;