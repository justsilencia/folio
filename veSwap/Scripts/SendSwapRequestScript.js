//Build 'Request Complete' and 'Date Range' element and append.
//
var eventComplete = "<div class='eventcompletemodal'><label class='js-close-eventcomplete modalexit'>X</label>" +
                    "<div class='eventcompletetxt'></div>" +
                    "</div>";

var selectDateRange = "<div class='selectdatemodal'><label class='js-close-selectdate close'>X</label>" +
                      "<div class='selectdatetxt'>" +
                        "<h3>When would you like to swap? Must give at least 24 hour notice.</h3>" +
                        "<input id='RequestDateFrom' maxlength='10' type='text' maxlength='10' placeholder='Date from' />" +
                        "<input id='RequestDateTo' maxlength='10' type='text' maxlength='10' placeholder='Date to' />" +
                        "<input id='SubmitRequest' type='submit' class='regsmbut js-submitrequest' value='Submit Request' />" +
                      "</div>" +
                      "</div>";
var appendOverlay = ("<div class='modaloverlay js-close'></div>");

$('body').append(eventComplete);
$('body').append(selectDateRange);
//Close modals.
//
function CloseModal() {
    $('.modaloverlay, .choosevehiclemodal').fadeOut(500, function () {
        $('.modaloverlay').remove();
    });
}
function CloseEventCompleteModal() {
    $('.eventcompletemodal').fadeOut(500, function () {
        $('eventcompletemodal').remove();
    });
}
function CloseSelectDateModal() {
    $('.modaloverlay, .selectdatemodal').fadeOut(500, function () {
        $('selectdatemodal').remove();
        $('.modaloverlay').remove();
    });
}
$('.js-close').click(CloseModal);
$('.eventcompletemodal').click(CloseEventCompleteModal);
$('.js-close-selectdate').click(CloseSelectDateModal);
//
// This function will check these before submitting request:
// whether user is given at least two days notice for swap request;
// ensure 'to date' does not predate 'from date'.
//
var twoDays = 172800000;
function ValidateSwapRequest(swapFrom, swapTo) {

    var now = new Date();
    var swapFromDate = new Date(swapFrom);
    var swapToDate = new Date(swapTo);
    var swapDiff, currentHour, result;

    var regexp = /^(\d{2}\/\d{2}\/\d{4})$/;
    var testFrom = regexp.test(swapFrom);
    var testTo = regexp.test(swapTo);
    if (testFrom === true && testTo === true) {
        currentHour = now.getHours() + 1;
        swapFromDate.setHours(currentHour);
        swapToDate.setHours(currentHour);
        swapDiff = swapFromDate.valueOf() - now.valueOf();

        if (swapToDate >= swapFromDate) {
            if (swapDiff < twoDays) {
                alert("Must give at least 2 days notice to request a swap.");
                $('.loadingimg').hide();
                result = false;
            }
            else {
                result = true;
            }
        }
        else {
            $('.loadingimg').hide();
            alert("'Date to' field must be some time after, or equal to, the 'Date from' field.");
            result = false;
        }
    }
    else {
        $('.loadingimg').hide();
        if (testFrom === false && testTo === true) {
            alert(swapFrom + " is not a valid date. Please enter a valid 'From date' ex. mm/dd/yyyy");
            result = false;
        }
        else if (testTo === false && testFrom === true) {
            alert(swapTo + " is not a valid date. Please enter a valid 'To date' ex. mm/dd/yyyy");
            result = false;
        }
        else {
            alert("Both dates you entered are invalid. Please enter valid dates. ex. mm/dd/yyyy");
            result = false;
        }
    }
    return result;
}
//
// Gets the date two days from now.
//
function GetDateTwoDaysFrom(inputDate) {
    var newDate = new Date(inputDate);
    newDate = newDate.valueOf();
    newDate = newDate + twoDays;
    var retDate = new Date(newDate);
    return retDate;
}
//Function for sending a request once a user clicks the 'send request' button.
//
function SendSwapRequest() {
    $(function () {
        $('span[js-param1]').off('click').click(function () {

            //Close event modal if it is open.
            //
            CloseEventCompleteModal();

            var userName = $(this).attr('js-param1');
            var otherUser = $(this).attr('js-param2');
            var valueCat = $(this).attr('js-param3');
            var otherVeId = $(this).attr('js-param4');
            var fromDate, toDate;
            var myVeId;
            var requestBtn = $(this);

            //Instantiate object for web service.
            //
            var serviceClass = new UserService();

            //Show Loader.
            //
            $(requestBtn).siblings('.loadingimg').show();

            //Object for adding event complete modal.
            //
            var sWidth = screen.width;

            var eventModal = (function () {
                $('.loadingimg').hide();
                $('.eventcompletemodal').fadeIn(500);
                var pos = requestBtn.offset();
                var top, left;

                left = pos.left - 355 + "px";
                top = pos.top - 250 + "px";

                if (sWidth < 768) {
                    left = pos.left - 510 + "px";
                    top = pos.top - 450 + "px";
                }
                if (sWidth < 420) {
                    left = pos.left - 520 + "px";
                    top = pos.top - 510 + "px";
                }
                $('.eventcompletemodal').css({
                    left: left,
                    top: top
                });
            });
            var dateRangeModal = (function () {
                $('.loadingimg').hide();
                $('.selectdatemodal').fadeIn(800);
                var check = $('.modaloverlay').hasClass('in');
                if (check === false) {
                    $('body').append(appendOverlay);
                }
                $('.modaloverlay').fadeTo(500, 0.7);
                var pos = requestBtn.offset();
                var left, top;

                left = pos.left - 310 + "px";
                top = pos.top - 360 + "px";

                if (sWidth < 768) {
                    left = pos.left - 490 + "px";
                    top = pos.top - 590 + "px";
                }
                if (sWidth < 420) {
                    left = pos.left - 525 + "px";
                    top = pos.top - 630 + "px";
                }
                $('.selectdatemodal').css({
                    left: left,
                    top: top
                });
            });
            //If user has over one vehicle in profile, ask which vehicle is being offered for trade.
            //
            var veNum = serviceClass.NumberOfVehicles(userName, VehicleCountFunction);

            function VehicleCountFunction(result) {

                if (result > 1) {
                    $(requestBtn).siblings('.choosevehiclemodal').fadeIn(500);
                    $('body').append(appendOverlay);
                    $('.modaloverlay').fadeTo(500, 0.7);
                    $('.modaloverlay').addClass('in');
                    $('.loadingimg').hide();

                    $('.js-imgclick').off('click').click(function () {
                        $(requestBtn).siblings('.loadingimg').show();
                        $('.choosevehiclemodal').fadeOut(500);
                        myVeId = $(this).attr('js-param5');
                        dateRangeModal();

                        var minDate = GetDateTwoDaysFrom(Date())

                        $('#RequestDateFrom').datepicker({
                            minDate: new Date(minDate)
                        });
                        $('#RequestDateTo').datepicker({
                            minDate: new Date(minDate)
                        });

                        $('.js-submitrequest').off('click').click(function () {
                            $(requestBtn).siblings('.loadingimg').show();
                            fromDate = $('#RequestDateFrom').val();
                            toDate = $('#RequestDateTo').val();

                            // Use ValidateSwap function to validate dates.
                            //
                            if (ValidateSwapRequest(fromDate, toDate) === true) {
                                serviceClass.SendSwapRequest(userName, otherUser, myVeId, otherVeId, fromDate, toDate, RequestSuccess);
                                CloseSelectDateModal();
                            }
                        });
                    });
                }
                else {
                    myVeId = $('img[js-param5]').attr('js-param5');

                    dateRangeModal();

                    var minDate = GetDateTwoDaysFrom(Date())

                    $('#RequestDateFrom').datepicker({
                        minDate: new Date(minDate)
                    });
                    $('#RequestDateTo').datepicker({
                        minDate: new Date(minDate)
                    });

                    $('.js-submitrequest').off('click').click(function () {
                        $(requestBtn).siblings('.loadingimg').show();
                        fromDate = $('#RequestDateFrom').val();
                        toDate = $('#RequestDateTo').val();

                        // Use ValidateSwap function to validate dates.
                        //
                        if (ValidateSwapRequest(fromDate, toDate) === true) {
                            serviceClass.SendSwapRequest(userName, otherUser, myVeId, otherVeId, fromDate, toDate, RequestSuccess);
                            CloseSelectDateModal();
                        }
                    });
                }
            }

            // Run this function once async service request is complete.
            //
            function RequestSuccess(result) {
                if (result === "true") {
                    eventModal();
                    $('.eventcompletetxt').html("Your request has been sent! You will be notified if this user accepts.");
                }
                else if (result === "falsescheduledswapother") {
                    eventModal();
                    $('.eventcompletetxt').html("This user already has a scheduled swap within this time frame.");
                }
                else if (result === "falsescheduledswapyou") {
                    eventModal();
                    $('.eventcompletetxt').html("You have already committed to swapping with someone within this time frame.");
                }
                else if (result === "falsesentrequest") {
                    eventModal();
                    $('.eventcompletetxt').html("You have already sent this user a request for this vehicle.");
                }
                else if (result === "falseothersent") {
                    eventModal();
                    $('.eventcompletetxt').html("This user has already sent you a request for this swap, and is waiting on your reply.");
                }
                else if (result === "error") {
                    eventModal();
                    $('.eventcompletetxt').html("An error has occurred, please contact us if this persists.");
                }
            }
        });
    });
};