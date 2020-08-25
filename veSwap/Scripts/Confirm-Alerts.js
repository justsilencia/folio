
function ConfirmBox(e, text) {
    if (!confirm(text)) {
        e.preventDefault();
    } 
}