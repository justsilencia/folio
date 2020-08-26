


exports.getTrendingHashtags = async function() {

    const data = await fetch('/gettrendinghashtags', {
        method: 'GET',
        headers: {
            'Accept': 'application/json',
            'Content-Type': 'application/json'
        }
    });
    const jsonData = await data.json();
    return jsonData;
}

exports.getTrendingMentions = async function() {
    const data = await fetch('/gettrendingmentions', {
        method: 'GET',
        headers: {
            'Accept': 'application/json',
            'Content-Type': 'application/json'
        }
    });
    const jsonData = await data.json();
    return jsonData;
}