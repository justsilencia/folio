//Function for on click password matching notice.

function checkPasswordMatch() {
    
    var passwordVal = $('#Password').val();
    var confirmPasswordval = $('#ConfirmPassword').val();
    var confirmPassword = document.getElementById('ConfirmPassword');
    var passwordBox = document.getElementById('Password');
    
    if (passwordVal != confirmPasswordval) {
        confirmPassword.style.backgroundColor = "#ff6666";
    }
    else {
        if (passwordVal == null || passwordVal == "" & confirmPasswordval == null || confirmPasswordval == "") {
            confirmPassword.style.backgroundColor = "White";
        }
        else {
            confirmPassword.style.backgroundColor = "#66cc66";
        }
    }
}

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
            emailBox.style.backgroundColor = "White";
        }
        else {
            emailBox.style.backgroundColor = "#ff6666";
        }
    }
}

//Function for sign up form button click validation.

$('#StepNextButton').click(function (event) {
    var firstName = $('#FirstName').val();
    var userName = $('#UserName').val();
    var password = $('#Password').val();
    var confPassword = $('#ConfirmPassword').val();
    var email = $('#Email').val();
    var myBool = true;

    $('#FirstNameValid').attr('class', 'validbox');
    $('#UserNameValid').attr('class', 'validbox');
    $('#PasswordValidBox').attr('class', 'validbox');
    $('#EmailValidBox').attr('class', 'validbox');
    $('#ConfValidBox').attr('class', 'none');

    if (firstName === '' & myBool === true) {
        $('#FirstNameValid').toggleClass("validboxviz");
        event.preventDefault();
        myBool = false;
    }
    if (userName === '' & myBool === true) {
        $('#UserNameValid').toggleClass("validboxviz");
        event.preventDefault();
        myBool = false;
    }
    if (password.length < 6 & myBool === true) {
        $('#PasswordValidBox').toggleClass("validboxviz");
        event.preventDefault();
        myBool = false;
    }
    if (password !== confPassword & myBool === true) {
        $('#ConfValidBox').toggleClass("validboxviz");
        event.preventDefault();
        myBool = false;
    }
    if (validateEmail(email) === false & myBool === true) {
        event.preventDefault();
        $('#EmailValidBox').toggleClass("validboxviz");
        myBool = false;
    }
});

// Function for editing profile user info for validation.

$('#SaveProBut').click(function(event) {
    var firstName = $('#FirstName').val();
    var email = $('#Email').val();
    var city = $('#City').val();
    var state = $('#State').val();
    var zip = $('#Zip').val();

    var myBool = true;

    $('#FirstNameValid').attr('class', 'none');
    $('#EmailValidBox').attr('class', 'none');
    $('#CityValidBox').attr('class', 'none');

    if (firstName === '' & myBool === true) {
        $('#FirstNameValid').toggleClass("validboxvizrt");
        event.preventDefault();
        myBool = false;
    }
    if (validateEmail(email) === false & myBool === true) {
        event.preventDefault();
        $('#EmailValidBox').toggleClass("validboxvizrt");
        myBool = false;
    }
    if (zip === '' & myBool === true) {
        $('#ZipValidBox').toggleClass("validboxvizrt");
        event.preventDefault();
        myBool = false;
    }
    if (city === '' & myBool === true) {
        $('#CityValidBox').toggleClass("validboxvizrt");
        event.preventDefault();
        myBool = false;
    }
});

// Form validation for adding a vehicle to user profile.

$('#SaveNewCar').click(function (event) {
    var veType = $('#VehicleType').val();
    var veMake = $('#car-makes').val();
    var veModel = $('#car-models').val();
    var veYear = $('#car-years').val();
    var veMiles = $('#VehicleMiles').val();
    var veDesc = $('#VehicleBio').val();

    var myBool = true;

    $('#MakeValidBox').attr('class', 'none');
    $('#MilesValidBox').attr('class', 'none');
    $('#DescValidBox').attr('class', 'none');
    $('#TypeValidBox').attr('class', 'none');

    if (veMake === 'Make' & myBool === true || veModel === 'Model' & myBool === true
        || veYear === 'Year' & myBool === true || veType === 'Type' & myBool === true) {
        $('#MakeValidBox').attr('class', 'validboxviz');
        event.preventDefault();
        myBool = false;
    }
    if (veMiles === '' & myBool === true) {
        $('#MilesValidBox').attr('class', 'validboxviz');
        event.preventDefault();
        myBool = false;
    }
    if (veDesc === '' & myBool === true) {
        $('#DescValidBox').attr('class', 'validboxviz');
        event.preventDefault();
        myBool = false;
    }
    $('.validboxviz, .validboxvizrad').click(function () {
        $(this).attr('class', 'none');
    });
});