

$(function () {
    
    var $ul = $('#upload ul');

    $('#drop a').on('click', function() {
        $(this).parent().find('input').click();
    });

    $('#upload').fileupload({
        dropZone: $('#drop'),
        add: function(e, data) {
            var tpl = $('<li class="working"><input type="text" class="knob" data-skin="tron" value="0" data-width="48" data-height="48"' +
                        ' data-fgColor="#0788a5" data-readOnly="1" data-bgColor="#3e4043" /><p></p><span>' +
                        '</span></li>');
            
            tpl.find('p').text(data.files[0].name).append('<i>' + formatFileSize(data.files[0].size) + '</li>');
            data.context = tpl.appendTo($ul);
            tpl.find('span').on('click', function() {
                if (tpl.hasClass('working')) {
                    jqXHR.abort();
                }
                tpl.fadeOut(function() {
                    tpl.remove();
                });
            });
        }
    });

    $(document).on('drop dragover', function(e) {
        e.preventDefault();
    });

    function formatFileSize(bytes) {
        if (typeof bytes !== 'number') {
            return '';
        }
    }

});