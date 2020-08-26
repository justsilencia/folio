
function initializeJoin() {
    var content = "<div class='avowed-container'>" +
        "<div class='join-modal-header'>" +
            "<h2>To what side are you avowed?</h2>" +
        "</div>" +
        "<div class='modal-body avowed-form-container'>" +
          "<input type='radio' value='left' class='av-left-radio' name='avowed-choice' id='avowed-left' />" +
          "<input type='radio' value='right' class='av-right-radio' name='avowed-choice' id='avowed-right' />" +
            "<div class='avowed-form avowed-left'><label for='avowed-left'><h3>The Honorable Left</h3>" + 
            "<i class='fa fa-3x fa-shield-alt'></i></label>" + 
            "</div>" +
            "<div class='avowed-form avowed-middle'><img src='/images/avowed-brain.png' /></div>" +
            "<div class='avowed-form avowed-right'><label for='avowed-right'>" + 
            "<h3>The Righteous Right</h3><i class='fa fa-3x fa-shield-alt'></i></label></div>" +
        "</div>" +
        "<div class='join-modal-footer'>" +
            "<span>Your voice is a thing to be protected, and no legitimate opinion will be sensored on this platform.</span>" +
        "</div></div>"
    modalWindow.initializeModal(content);
    var modalBtn = document.getElementById('modal-btn'),
        cancelModal = document.getElementById('cancel-modal');
    modalBtn.addEventListener('click', function() {
        var avowedEl = document.getElementById('avowed-final'),
            formNotice = document.getElementById('avowed-selection'),
            avowedRadio = document.querySelector('input[name="avowed-choice"]:checked') ? document.querySelector('input[name="avowed-choice"]:checked').value : null;
        
        if (avowedRadio) {
            formNotice.innerHTML = "<h1>You are an avowed " + avowedRadio + "ist.</h1>";
            avowedEl.setAttribute('value', avowedRadio);
            modalWindow.closeModal();
        } else {
            alert('Please choose a side in order to move forward.');
        }
    });

    cancelModal.addEventListener('click', function() {
        modalWindow.closeModal();
        window.location.replace('http://localhost:3000');
    });

    //var test = 'hello';
    //test.substr(0, test.length).toUpperCase();
}

window.onload = initializeJoin();