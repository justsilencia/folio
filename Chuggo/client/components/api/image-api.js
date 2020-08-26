

exports.getSmallProfileImg = async function(id) {
    const data = await fetch('/getSmallProfileImg/' + id, {
        method: 'GET',
        headers: {
            'Accept': 'application/json',
            'Content-Type': 'application/json'
        }
    });

    const jsonData = await data.json();
    return jsonData;
}