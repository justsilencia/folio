
const validateImgFileType = (imgData) => {
    if(!imgData) {
        return false;
    }
    var imgBase64 = imgData,
          regExp = /(^data:image\/jpeg;base64,)|(^data:image\/png;base64,)/,
          isValid = regExp.test(imgBase64);
    
    if (isValid) {
        return true;
    } else { return false; }
}

const validateImgSize = (file) => {
    const fileSize = file.size / 1024 / 1024;
    if (fileSize < 2) {
      return true;
    } else {
      return false;
    }
}

export { validateImgFileType, validateImgSize };