const urlParams = new URLSearchParams(window.location.search);
const code = urlParams.get('co');
const errorMessage = document.querySelector('.errorMessage');

switch (code) {
    case '001':
        errorMessage.innerHTML = "Database error";
        break;
    case '101':
        errorMessage.innerHTML = "Invalid login data";
        break;
    
    default:
        break;
}