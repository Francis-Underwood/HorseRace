function MenuGoUrl(url) {
    location.href = url;
}
function openDialog(url, name, param) {
    showModalDialog(url, name, param);
}
function MenuMouseOver(o) {
    o.bgColor = 'lightyellow';
    o.style.color = 'red';
}
function MenuMouseOut(o) {
    o.bgColor = '';
    o.style.color = 'black';
}
function Openwin(o) {
o.open("HTMLPage.htm");
}