
function previewImage(event, imgPreviewId) {
    var reader = new FileReader();
    reader.onload = function () {
    var output = document.getElementById(imgPreviewId);
    output.src = reader.result;
};
