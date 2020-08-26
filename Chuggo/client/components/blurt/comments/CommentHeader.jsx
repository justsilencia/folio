import React from 'react';
import TimeElapsed from '../../utils/TimeElapsed';

export default function CommentHeader(props) {
    return (
        <div className="comment-panel-header">
            <table>
                <tbody>
                <tr>
                    <td>
                        <img src={props.comment.author.id.smImg?'/images/profiles/' + props.comment.author.id.smImg:'/images/profiles/default.png'} />
                    </td>
                    <td>
                        <div className='blurt-meta-box'>
                            <div className='blurt-header-meta'>
                                <a href={'/profileview/' + props.comment._userid}>
                                    @{ props.comment.author.id.displayName }
                                </a>
                            </div>
                            <div className='blurt-header-meta'>
                                { TimeElapsed(props.comment.postedDate, 'Commented') }
                            </div>
                        </div>
                    </td>
                </tr>
                </tbody>
            </table>
        </div>
    )
}