(function($) {
    var bggreen = '#aaffaa',
        bgred = '#ff6666';
        
    $.fn.pwMatch = function(minLength) {
        var pwarr, pwInputs, pwbg, vpwbg, lengthCheck;
        pwInputs = $(this).find('input[type=password]');

        function isLength(len, minLen) {
            return (len < minLen) ? false : true;
        }
        
        
        $('button[type=submit]').on('click', (e) => {
            pwarr = new Array();
            pwInputs.each(function() {
                pwarr.push($(this));
            });
            lengthCheck = isLength(pwarr[0].val().length, minLength);
            
            if (pwarr[0].val() != pwarr[1].val()) {
                e.preventDefault();
                alert('Passwords do not match, please re-type and try again.');
            }
            if (!lengthCheck) {
                e.preventDefault();
                alert('Your password must be at least 6 characters.');
            }
        });

        $('input[type=password]').keyup(() => {
            pwarr = new Array();
            pwInputs.each(function() {
                pwarr.push($(this));
            });
            lengthCheck = isLength(pwarr[0].val().length, minLength);
            if (lengthCheck) { 
                    pwbg = bggreen;
            } else {
                pwbg = 'white';
            }

            if (pwarr[0].val() != pwarr[1].val()) {
                    vpwbg = bgred;
            }
            else {
                if (pwarr[0].val() == null || pwarr[0].val() == "" & pwarr[1].val() == null || pwarr[1].val() == "") {
                        vpwbg = 'white';
                }
                else {
                        vpwbg = (lengthCheck) ? bggreen : bgred;
                }
            }
            pwarr[0].css({
                backgroundColor: pwbg
            });
            pwarr[1].css({
                backgroundColor: vpwbg
            });
        });
    }
    
    $.fn.validEmail = function() {
        $(this).keyup(function () {
            var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
        (re.test($(this).val())) ? $(this).css({backgroundColor: bggreen}) : this.style.backgroundColor = "white";
        });
    }
}(jQuery));

