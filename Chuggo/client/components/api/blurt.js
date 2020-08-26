
exports.getBlurts = async function(skipRecords) {
    const data = await fetch('/getblurts/' + skipRecords, {
            method: 'GET',
            headers: {
                'Accept': 'application/json',
                'Content-Type': 'application/json'
            }
        });

    const jsonData = await data.json();
    return jsonData;
}

exports.getFollowingBlurts = async function(date) {
    const data = await fetch('/getfollowingblurts/' + date, {
        method: 'GET',
        headers: {
            'Accept': 'application/json',
            'Content-Type': 'application/json'
        }
    });
    const jsonData = await data.json();
    return jsonData;
}

exports.getRandomBlurts = async function(date) {
    const data = await fetch('/getrandomblurts/' + date, {
        method: 'GET',
        headers: {
            'Accept': 'application/json',
            'Content-Type': 'application/json'
        }
    });
    const jsonData = await data.json();
    return jsonData;
}

exports.postBlurt = async function(newBlurt) {
    const data = await fetch('/postblurt', {
        method: 'POST',
        headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json'
        },
        body: JSON.stringify({
          blurt: newBlurt
        })
      });
      
      const jsonData = await data.json();
      return await jsonData;
}

exports.upvoteBlurtapi = async function(id) {
    const data = await fetch('/upvoteblurt', {
        method: 'POST',
        headers: {
            'Accept': 'application/json',
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({
            blurt: {
                id: id
            }
        })
    });
    const jsonData = await data.json();
    return await jsonData;
}