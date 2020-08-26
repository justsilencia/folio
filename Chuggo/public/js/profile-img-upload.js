(function() {
    // Initialize cropper instance; set boundary and viewport values.
    // Sets image ratio of 2.5 : 1
  
    var wid = screen.width,
        hei = wid / 2.5,
        cirwid = hei,
        cirhei = hei;

    if (screen.width >= 1280) {
        wid = wid - 350;
        hei = hei - 350 / 2.5;
        cirwid = 320;
        cirhei = 320;
    } else if (screen.width > 992) {
        wid = wid - 250;
        hei = hei - 250 / 2.5;
        cirwid = 320;
        cirhei = 320;
    }
    else if (screen.width > 768) {
        wid = wid - 200;
        hei = hei - 200 / 2.5;
        cirwid = 320;
        cirhei = 320;
    }
    
    var cropperlg = new Croppie(document.getElementById('croppie-lg'), {
        viewport: {
            width: wid - 80,
            height: hei - 80 / 2.5
        },
        boundary: {
            height: hei,
            width: wid
        }
    });
    var croppersm = new Croppie(document.getElementById('croppie-sm'), {
        viewport: {
            width: cirwid - 20,
            height: cirhei - 20,
            type: 'circle'
        },
        boundary: {
            height: hei,
            width: wid
        }
    });

    // Attach click event to open choose file dialogue.
    $('.btn-update-lg-img').on('click', () => {
        $('#update-lg-file').click();
    });
    $('.btn-update-sm-img').on('click', () => {
        $('#update-sm-file').click();
    });
    // Attach change event in order to re-bind the croppie instance to new image.
    $('#update-lg-file').on('change', function() {
        $('#crop-container-lg').toggle();
        PlaceLargeImg(this, '#cropped-lgimg', 1006);
    });
    $('#update-sm-file').on('change', function() {
        $('#crop-container-sm').toggle();
        PlaceSmallImg(this, '#cropped-smimg', 1006);
    });
    // Attach click event that toggles croppie visibility, and sets source of of croppie image and
    // value of file input to nothing.
    $('#btn-croplg-cancel').on('click', () => {
        $('#cropped-lgimg').attr('src', '');
        $('#crop-container-lg').toggle();
        $('#update-lg-file').val('');
    });
    $('#btn-cropsm-cancel').on('click', () => {
        $('#cropped-smimg').attr('src', '');
        $('#crop-container-sm').toggle();
        $('#update-sm-file').val('');
    });
    
    // Function that places image by re-binding the croppie instance each time
    // a new file is chosen.
    function PlaceLargeImg (input, imgId, zindex) {
        // DELETE LINE var $imgel = $(imgId);
            
        var reader = new FileReader();
        reader.onload = function(e) {
            // Sets image src to the value of file input.
            // DELETE LINE $imgel.attr('src', e.target.result).css({display: 'none'}).parent().css({ zIndex: zindex });
            
            // Bind croppie
            cropperlg.bind({
                url: e.target.result
                // DELETE LINE url: $imgel.attr('src')
            });
            // On click method which crops and sets results to html input.
            $('.btn-crop-lg').on('click', () => {
                cropperlg.result({
                    type: 'canvas',
                    size: {width: 1000, height: 400},
                }).then(function(result) {
                    $('#base64lg').val(result); // Resulting cropped img base64 that gets sent to server.
                    $('#uploadLg').submit(); // Submit form.
                });
            });
        };
        reader.readAsDataURL(input.files[0]);
    }

    // Same function for placing small image.
    function PlaceSmallImg (input, imgId, zindex) {
        var $imgel = $(imgId);
            
        var reader = new FileReader();
        reader.onload = function(e) {
            // Sets image src to the value of file input.
            $imgel.attr('src', e.target.result).css({display: 'none'}).parent().css({ zIndex: zindex });
            
            croppersm.bind({
                url: $imgel.attr('src')
            });
            $('.btn-crop-sm').on('click', () => {
                croppersm.result({
                    type: 'canvas',
                    size: {width: 150, height: 150}
                }).then(function(result) {
                    $('#base64sm').val(result);
                    $('#uploadSm').submit();
                });
            });
        };
        reader.readAsDataURL(input.files[0]);
    }
}())
