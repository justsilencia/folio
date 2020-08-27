

//Email validation functions.

function validateEmail(email) {
    var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    return re.test(email);
}
function checkValidEmail() {
    
    var emailBox = document.getElementById('Email');
    var emailTxt = $('#Email').val();
    if (validateEmail(emailTxt)) {
        emailBox.style.backgroundColor = "#66cc66";
    }
    else {
        if (emailTxt == "" || emailTxt == null) {
            emailBox.style.backgroundColor = "#EAE3EA";
        }
        else {
            emailBox.style.backgroundColor = "#ff6666";
        }
    }
}

//Function for sign up form button click validation.

$('#StepNextButton').click(function (event) {
    var email = $('#Email').val();
    var myBool = true;

    $('#EmailValidBox').attr('class', 'validbox');
    $('#ConfValidBox').attr('class', 'none');

    if (validateEmail(email) === false & myBool === true) {
        event.preventDefault();
        $('#EmailValidBox').toggleClass("validboxviz");
        alert("Please enter a valid e-mail address.")
        myBool = false;
    }
});

