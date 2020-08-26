import React, {useEffect, useState}  from 'react';
import ProfileMenu from './ProfileMenu.jsx';

export default function() {
    const [userImg, setUserImg] = useState(null);
    const [alerts, setAlerts] = useState([]);
    const [blurtAlerts, setBlurtAlerts] = useState(0);

    useEffect(() => {
        var parentEl = document.getElementById('profile-menu'),
            attr = parentEl.getAttribute('user-img');

        fetch('/getalerts', {
            method: 'GET',
            headers: {
                'Accept': 'application/json',
                'Content-Type': 'application/json'
            }
        })
        .then(res => res.json())
        .then(data => {
            setAlerts(data);
            data.forEach((i) => {
                if (i._id.alertType == 'blurtcomment') {
                    setBlurtAlerts(blurtAlerts + 1);
                }
            });
        });
        setUserImg(attr);
    }, []);

    return (
        <>
            <a className='dropdown-toggle' data-toggle='dropdown' href='javascript:void(0)'>
                {
                    (alerts.length > 0) ? 
                    <span className='alert-count'>
                        {alerts.length}
                    </span>
                    :
                    ''
                }
                {
                    userImg? <img src={'/images/profiles/' + userImg} /> : ''
                }
            </a>
            <ProfileMenu blurtAlerts={blurtAlerts} alerts={alerts} />
        </>
    )
}