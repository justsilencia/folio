
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

var cropper = new Croppie(document.getElementById('testbed'), {
viewport: {
    width: wid - 80,
    height: hei - 80 / 2.5
},
boundary: {
    height: hei,
    width: wid
}
});

cropper.bind({
    url: '/images/wont-crop.jpg'
});

$('#crop-btn').on('click', (e) => {
    cropper.result({
        type: 'canvas',
        size: { width: 1000, height: 400 }
    }).then(function(result) {
        $('#cropped-img').attr('src', result);
    })
});