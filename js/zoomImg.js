function zoomImg(mouseOver, id, range) {
    var element = document.getElementById(id);
    var width = element.clientWidth;
    var height = element.clientHeight;
    range = 150;
    if (mouseOver && id != null) {
        element.style.width = (width + range) + 'px';
        element.style.height = (height + range) + 'px';
    }
    else if (!mouseOver && id != null) {
        element.style.width = (width - range) + 'px';
        element.style.height = (height - range) + 'px';
    }
}