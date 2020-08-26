

exports.getFollowingImg = async function() {
    const data = await fetch('/followingimg', {
        method: 'GET',
        headers: {
            'Accept': 'application/json',
            'Content-Type': 'application/json'
        }
    });

    const jsonData = await data.json();
    return jsonData;
}

exports.getFollowers = async function() {
    
}