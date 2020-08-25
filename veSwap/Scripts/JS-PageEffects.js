
function CreateModalBox() {
    $(function () {
        var appendOverlay = ("<div class='modaloverlay js-close'></div>");
        $('label[data-modal-id]').click(function (e) {
            $('body').append(appendOverlay);
            $('.modaloverlay').fadeTo(500, 0.7);
            var modalBoxId = $(this).attr('data-modal-id');
            $('#' + modalBoxId).fadeIn(500);
        });

        $('.js-close').click(function () {
            $('.modalbox, .modaloverlay').fadeOut(500, function () {
                $('.modaloverlay').remove();
            });
        });
    });
}