

exports.emojiIcons = {
    ':smile:'      : 'smile.png',
    ':sad:'        : 'sad.png',
    ':angry:'      : 'angry.png',
    ':flushed:'    : 'flushed.png',
    ':neckbeard:'  : 'neckbeard.png',
    ':laughing:'   : 'laughing.png',
    ':hearteyes:'  : 'hearteyes.png',
    ':puke:'       : 'puke.png',
    ':scrutinize:' : 'scrutinize.png',
    ':blowmind:'   : 'blowmind.png',
    ':chuckle:'    : 'chuckle.png',
    ':moneysmile:' : 'moneysmile.png'
}

exports.createIcon = function(emoji, imgpath) {
    var filename = exports.emojiIcons[emoji];
    var path = imgpath || '';
    if (path.length && path.charAt(path.length - 1) !== '/') {
        path += '/';
    }
    return '<img class="emoji-display" src="' + path + filename + '">';
}
