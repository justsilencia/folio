(function() {
    $('#btn-blurtimg').on('click', () => {
        $('#BlurtImgFile').click();
    });

    $('#BlurtImgFile').on('change', function() {
        $('#blurt-base64').remove();
        PlaceBlurtImg(this);
    });

    function PlaceBlurtImg (input) {
        
        var reader = new FileReader();
        reader.onload = function(e) {
            // Sets image src to the value of file input.
            var $imgel = $('<img id="blurt-base64" src=' + e.target.result + '>');
            $('#blurt-img-container').addClass('blurt-img-container').append($imgel);
        }
        reader.readAsDataURL(input.files[0]);
    }
}())