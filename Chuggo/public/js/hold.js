$(function(){

    var zone = $('.lg-prof-img');

    // Initialize the jQuery File Upload plugin
    $('#hold').fileupload({

        // This element will accept file drag/drop uploading
        dropZone: zone,

        // This function is called when a file is added to the queue;
        // either via the browse button, or via drag/drop:
        add: function (e, data) {

            var tpl = $('<span class="working"><input type="text" value="0" data-width="38" data-height="38"'+
                ' data-fgColor="#0788a5" data-readOnly="1" data-bgColor="#3e4043" /></span>');

            // Add the HTML to the UL element
            data.context = tpl.appendTo(zone);

            // Initialize the knob plugin
            tpl.find('input').knob();

            // Listen for clicks on the cancel icon
            tpl.find('span').click(function() {

                if(tpl.hasClass('working')){
                    jqXHR.abort();
                }

                tpl.fadeOut(function(){
                    tpl.remove();
                });

            });

            // Automatically upload the file once it is added to the queue
            var jqXHR = data.submit();
        },

        progress: function(e, data){

            // Calculate the completion percentage of the upload
            var progress = parseInt(data.loaded / data.total * 100, 10);

            // Update the hidden input field and trigger a change
            // so that the jQuery knob plugin knows to update the dial
            data.context.find('input').val(progress).change();

            if(progress == 100){
                data.context.removeClass('working');
            }
        },

        fail: function(e, data){
            // Something has gone wrong!
            data.context.addClass('error');
        }

    });

    // Helper function that formats the file sizes
    function formatFileSize(bytes) {
        if (typeof bytes !== 'number') {
            return '';
        }

        if (bytes >= 1000000000) {
            return (bytes / 1000000000).toFixed(2) + ' GB';
        }

        if (bytes >= 1000000) {
            return (bytes / 1000000).toFixed(2) + ' MB';
        }

        return (bytes / 1000).toFixed(2) + ' KB';
    }

});