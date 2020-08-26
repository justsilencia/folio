import React from 'react';
import TimeElapsed from '../utils/TimeElapsed.js';

const BlurtHeader = (props) => {
    return (
        <div className='blurt-panel-header'>
            <table>
                <tbody>
                <tr>
                    <td>
                        <img src={'/images/profiles/' + props.blurt.smImg} />
                    </td>
                    <td>
                        <div className='blurt-meta-box'>
                            <div className='blurt-header-meta'>
                                <a href={'/profileview/' + props.blurt._userid}>
                                    @{ props.blurt.displayName }
                                </a>
                            </div>
                            <div className='blurt-header-meta'>
                                { TimeElapsed(props.blurt.blurtDate, 'Blurted') }
                            </div>
                        </div>
                    </td>
                </tr>
                </tbody>
            </table>
            <span>
                
            </span>
            
        </div>
    )
}

export default BlurtHeader;