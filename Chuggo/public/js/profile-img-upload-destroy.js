
//////////////// Below is selection, crop, and upload logic for large profile image.

$('.btn-update-lg-img').on('click', () => {
    $('#update-lg-file').click();
});
$('#update-lg-file').on('change', function() {
    PlaceLargeImg(this, '#cropped-lgimg', 1006);
});
function PlaceLargeImg (input, imgId, zindex) {
    var $imgel = $(imgId),
        $imgContainer = $($imgel.parent());
        
    var reader = new FileReader();
    reader.onload = function(e) {
        $('#crop-container-lg').css({ display: 'block' });
        $imgel.attr('src', e.target.result).css({display: 'none'}).parent().css({ zIndex: zindex });
        var oWidth = 1000,
            oHeight = oWidth / 2.5;

            if (oWidth > 700) {
                oWidth = oWidth - 200;
                oHeight = oHeight - 200 / 2.5;
            }
          
        var cropper = new Croppie(document.getElementById($imgContainer.attr('id')), {
            viewport: {
                width: oWidth - 80,
                height: oHeight - 80 / 2.5
            },
            boundary: {
                height: oHeight,
                width: oWidth
            }
        });
        cropper.bind({
            url: $imgel.attr('src')
        });
        $('.btn-crop-lg').on('click', () => {
            cropper.result({
                type: 'canvas',
                size: {width: 1000, height: 400}
            }).then(function(result) {
                $('#base64lg').val(result);
                $('#uploadLg').submit();
            });
        });
       
        $('#btn-croplg-cancel').on('click', () => {
            cropper.destroy();
            $imgel.attr('src', '');
            $('.crop-container').css({ display: 'none' });
            $('#update-lg-file').val('');
        });
    };
    reader.readAsDataURL(input.files[0]);
}

