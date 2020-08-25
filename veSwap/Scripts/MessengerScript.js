

function InitializeConvoUpdater() {
    var updateConvoTimer = setInterval(function () { UpdateConversation(); }, 5000);
}

function UpdateConversation() {

    var userFrom = $('#JsMsgFrom').html();
    var userTo = $('#JsMsgTo').html();

    $.ajax({
        type: "POST",
        url: "http://www.veswap.com/Services/MessengerService.asmx/UpdateChat",
        cache: false,
        data: '{"userTo":"' + userFrom + '", "userFrom":"' + userTo + '"}',
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: updateChatHtml,
        error: updateChatFailed
    });

    function updateChatHtml(data) {

        if (data.d != "" && data.d != null) {

            var xmlString, parser, xmlDoc;

            xmlString = data.d;
            xmlDoc = $.parseXML(xmlString);
            $xml = $(xmlDoc);

            $xml.find("message").each(function () {
                var message, date, time;
                var newRow = "<tr><td align='center'><div class='msgfromotherbox'>";

                message = $(this).find("string").text();
                date = $(this).find("date").text();
                time = $(this).find("time").text();
                newRow = newRow + date + " @ " + time + "<br>" + message;

                $('.js-insertmsg').before(newRow);
                $('#m-wrapper').scrollTop($('.messengertableoutermost').height());
            });
        }
    }

    function updateChatFailed() {
        console.log("Update failed.");
    }
}

$(document).ready(function () {
    //var wr = new Optiscroll(document.getElementById('m-wrapper'), { forceScrollbars: true });
    //wr.scrollTo('', 'bottom', '0');
    $('#m-wrapper').scrollTop($('.messengertableoutermost').height());
    var checkMessagesTimer = setInterval(function () { CheckForNewMessage(); }, 10000);

    $('.js-sendmsg').click(function () {

        $('.msgloader').show();
        var userFrom = $('#JsMsgFrom').html();
        var userTo = $('#JsMsgTo').html();
        var now = new Date();
        var day = now.getDate();
        var year = now.getFullYear();
        var month = now.getMonth() + 1;
        var displayDate = month + "/" + day + "/" + year + " @ Just now.";
        var msg = $('#NewMsgInput').val();
        var newRow = "<tr><td align='center'><div class='msgfrommebox'>" + displayDate + "<br>" + msg + "</div></td></tr>";

        if (msg != "" && msg != null) {
            SendAjaxMessage();
        }
        else {
            alert("Please enter a message first, then send.");
            $('.msgloader').hide();
        }

        function SendAjaxMessage() {
            $.ajax({
                type: "POST",
                url: "http://www.veswap.com/Services/MessengerService.asmx/SendMessage",
                cache: false,
                contentType: "application/json; charset=utf-8",
                data: '{"userTo":"' + userTo + '", "userFrom":"' + userFrom + '", "msg":"' + msg + '"}',
                dataType: "json",
                success: handleHtml,
                error: ajaxFailed
            });

            function handleHtml(data) {
                if (data.d == "true") {
                    $('.js-insertmsg').before(newRow);
                    $('.msgloader').hide();
                    $('#NewMsgInput').val("");
                    $('#m-wrapper').scrollTop($('.messengertableoutermost').height());
                }
                else {
                    $('.msgloader').hide();
                    alert("Sorry, there was an error with your message. Please refresh this page and try again.");
                }
            }

            function ajaxFailed() {
                $('.msgloader').hide();
                alert("Sorry, there was an error with your message. Please refresh this page and try again.");
            }
        }
    });
    function CheckForNewMessage() {
        var user = $('#ThisUserName').html();

        $.ajax({
            type: "POST",
            url: "http://www.veswap.com/Services/MessengerService.asmx/CheckMessages",
            cache: false,
            contentType: "application/json; charset=utf-8",
            data: '{"user":"' + user + '"}',
            dataType: "json",
            success: notifyNewMessages,
            error: msgCheckFailed
        });

        function notifyNewMessages(data) {

            if (data.d > 0) {
                var insertNum = "&nbsp;<span id='MsgNumNotice'>" + data.d + "</span>";

                if (!$('.js-msgnumnotice').length) {
                    $('.js-msgnum').append(insertNum);
                }
                else {
                    if ($('.js-msgnumnotice').html() != data.d) {
                        $('.js-msgnumnotice').html(data.d);
                    }
                }
            }
            else {
                if ($('.js-msgnumnotice').length) {
                    $('.js-msgnumnotice').remove();
                }
            }
        }

        function msgCheckFailed() {

        }
    }
});

 
