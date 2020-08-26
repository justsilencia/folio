import React, { Component } from 'react';
import Sanitizer from '../utils/Sanitizer.jsx';
import BlurtHeader from './BlurtHeader.jsx';
import BlurtFooter from './blurtfooter/BlurtFooter.jsx';
import inViewPort from '../utils/inViewPort';

class LazyBlurtLoader extends Component {
    constructor(props) {
        super(props);

        this.state = {
            lazyState: {
              lzyLoading: true,
              skipCount: 6,
              skipInc: 6,
              skipDb: 2
            },
            isVisible: [],
            numberRendered: 0
          };

        this.LazyLoader = this.LazyLoader.bind(this);
        this.PushArray = this.PushArray.bind(this);
    }
    
    LazyLoader() {
        // Capture the element that is to be checked for engaging lazy load.
        const lazyEl = document.getElementById(this.props.lazyElement);
        // Check whether element is in the viewport.
        if (inViewPort(lazyEl)) {
            // This is to ensure that lazy loader only engages once, because scroll function
            // will fire multiple times.
            
            if (this.state.lazyState.lzyLoading) {
                // Set lzyLoading state to false in order to make aware that dataset retrieval has
                // already been attempted, so as not to tag db multiple times on scroll.
                this.setState(prevState => ({
                  lazyState: {
                    lzyLoading: false,
                    skipCount: prevState.lazyState.skipCount,
                    skipInc: 6
                }}));
                
                // Check if the number of rendered blurts is less than the total amount of 
                // blurts fetched by the api call (stored in array).
                    if (this.state.numberRendered < this.props.blurts.length) {
                        this.PushArray();
                    } else {
                        this.props.mountMoreBlurts();
                    }

                // Change #LazyElement id in order to remove from viewport,
                // and set later to the bottom-most comment div.
                if (lazyEl) lazyEl.setAttribute('id', 'false');
            }
        }
    }

    PushArray() {
        var maxSkipCount = this.state.lazyState.skipCount,
            numRendered = this.state.numberRendered,
            isVisibleUpdate = this.state.isVisible;
        
            // Logic to get the next 6 (or less) blurts in the array and set isVisible to true
            // each time this method is called by the lazyloader method.
           
            for(let i=numRendered; i<maxSkipCount; i++) {
                // If corresponding blurt exists, set visible to true.
                if (this.props.blurts[i]) {
                    isVisibleUpdate[i] = true;
                    numRendered++;
                }
            }

            // Update state accordingly so the loop iterates over the proper numerical
            // sequence keeping the blurts in order of consecutive sixes.
            this.setState(prevState => ({
                lazyState: {
                    lzyLoading: true,
                    skipCount: 6 + numRendered, 
                    skipInc: 6,
                    skipDb: prevState.lazyState.skipDb
                },
                isVisible: isVisibleUpdate,
                numberRendered: numRendered
            }));
    }

    componentDidMount() {
        
        // Create array within local state that corresponds with props data
        // that determines whether each element is visible (defaults to false).
        var isVisibleArray = this.props.blurts.map(() => false);
        this.setState({ isVisible: isVisibleArray });
        this.PushArray();

        // If initial following blurts is 5 or less, we should go ahead and tag the server
        // for more records. This shouldn't happen once users become active, more of a fail-safe.
        
        if (this.props.lazyElement === 'lzyfollowing' && this.props.blurts.length <= 5) {
            setImmediate(() => {
                this.LazyLoader();
            });
        }
        
        window.addEventListener('scroll', this.LazyLoader);
    }

    componentDidUpdate(prevProps) {
        // Only make blurts visible if the amount of blurts has changed.
        if (prevProps.blurts.length !== this.props.blurts.length) {
            this.PushArray();
        }
        // If the current render contains 5 or less blurts, run LazyLoader() to
        // attempt mounting more blurts.
        if (this.props.blurts.length <= 5) {
            this.LazyLoader();
        }
    }

    componentWillUnmount() {
        window.removeEventListener('scroll', this.LazyLoader);
    }

    render() {
        const rendered = this.props.blurts.map((item, i) => {
            var renderBlock;
            if (this.state.isVisible[i]) {
                renderBlock = (
                    <div className='blurt-panel' id={(i+1) == this.state.numberRendered ? this.props.lazyElement : 'false'} key={i}>
                    <BlurtHeader blurt={item} />
                    <div className='blurt-panel-body'>
                        <Sanitizer dirty={ item.text.replace(/\n/g, '<br/>') } />
                        {
                            (item.blurtImg !== 'false')? <img src={'/images/blurt/' + item.blurtImg} /> : ''
                        }
                    </div>
                    <BlurtFooter
                        blurtAuthor={item._userid} 
                        voteCount={item.vote.tally}
                        currentUser={this.props.currentUser}
                        blurtId={item._id}
                        blurtIndex={i}
                        handleUpvoteState={this.props.handleUpvoteState}
                    />
                </div>
                );
            } else {
                renderBlock = '';
            }
            return renderBlock
        });
        return (
            <>
                {
                    this.props.random? 
                    <div className='blurt-panel-header'>
                        <strong>You're not following anyone with any blurts <i>yet</i>, 
                        here's some random blurts to get you started!</strong>
                    </div>
                    : ''
                }
                { rendered }
            </>
        )
    }
}

export default LazyBlurtLoader;