import React, {useEffect} from 'react';
import { emojiIcons } from './emoji/emoji-icons';
import { ValidateURL } from './utils/RegExes';

export default function BlurtInput(props) {

    useEffect(() => {
        const $wysiwyg = $('#blurt-input').emojiarea({
                button: '#emoji-blurt-btn',
                origin: 'new-blurt',
                parentContainer: 'new-blurt-container'
            });
        
        $.emojiarea.path = '/js/jquery/emojis/';
        $.emojiarea.icons = emojiIcons;
		
        $wysiwyg.on('change', function() {
            props.SetBlurt($wysiwyg.val());
        });
    }, []); 

    return (
        <>
            <textarea id='blurt-input' />
            <i id={'emoji-blurt-btn'} className='fa fa-smile emoji-btn' />  
        </>
    )

}

