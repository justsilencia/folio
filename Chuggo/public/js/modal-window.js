
var modalWindow = (function() {
    var bodytag = document.getElementsByTagName('body'),
        modalContainer = document.createElement('div'),
        modalBox = document.createElement('div'),
        btnGroup = document.createElement('div'),
        modalBtn = document.createElement('button'),
        cancelBtn = document.createElement('button');

    btnGroup.className = 'btn-group';
    modalBtn.innerText = 'Submit';
    cancelBtn.innerText = 'Cancel';
    cancelBtn.className = 'btn btn-danger join-btn';
    cancelBtn.id = 'cancel-modal';
    modalBtn.className = 'btn btn-primary join-btn';
    modalBtn.id = 'modal-btn';
    modalBox.className = 'join-modal';
    btnGroup.append(modalBtn, cancelBtn);

    return {
        initializeModal: function(content) {
            modalBox.innerHTML = content;
            modalBox.append(btnGroup);
            modalContainer.append(modalBox);
            modalContainer.className = 'modalbg';
            bodytag[0].append(modalContainer);
        },
        closeModal: function(cb) {
            modalContainer.remove();
            if (cb) cb();
        }
    }
}());