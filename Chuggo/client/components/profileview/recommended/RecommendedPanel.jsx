import React, { Component } from 'react';
import trendingapi from '../../api/trending';

class RecommendedPanel extends Component {
    constructor(props) {
        super(props);

        this.state = {
            trendingHashtags: [],
            trendingMentions: []
        }
    }

    componentDidMount() {
        trendingapi.getTrendingHashtags().then((data) => {
            this.setState({ trendingHashtags: data });
        });
        trendingapi.getTrendingMentions().then((data) => {
            this.setState({ trendingMentions: data });
        });
    }

    render() {
        const hashtags = this.state.trendingHashtags.map((item, i) => {
            return (
                <div key={i}>
                    <a href='http://localhost:3000'>
                        #{ item._id }
                    </a>
                    <em> { item.tagCount } Blurts </em>
                </div>
            )
        });
        const mentions = this.state.trendingMentions.map((item, i) => {
            return (
                <div key={i}>
                    <a href='http://localhost:3000'>
                        @{ item._id }
                    </a>
                    <em> { item.tagCount } Mentions </em>
                </div>
            )
        });

        return (
            <>
            <div className='trending-panel'>
                <div className='trending-panel-header'>
                    <h4>Trending Hashtags</h4>
                </div>
                <div className='trending-panel-body'>
                    <div className='trending-items'>
                        { hashtags }
                    </div>
                    <em><a href='http://localhost:3000'>View more...</a></em>
                </div>
            </div>
            <div className='trending-panel'>
                <div className='trending-panel-header'>
                    <h4>Popular Mentions</h4>
                </div>
                <div className='trending-panel-body'>
                    <div className='trending-items'>
                        { mentions }
                    </div>
                    <em><a href='http://localhost:3000'>View more...</a></em>
                </div>
                <div className='trending-panel-footer'>
                    copyright 2020
                </div>
            </div>
            </>
        )
    }
}

export default RecommendedPanel;