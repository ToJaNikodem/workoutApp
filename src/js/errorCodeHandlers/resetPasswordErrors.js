const urlParams = new URLSearchParams(window.location.search);
const code = urlParams.get('co');
const errorMessage = document.querySelector('.errorMessage');
const codeMessage = document.querySelector('.codeMessage');

switch (code) {
    case '001':
        errorMessage.innerHTML = "Database error";
        break;
    case '101':
        errorMessage.innerHTML = "Invalid login data";
        break;
    case '106':
        errorMessage.innerHTML = "Account on that email doesn't exists";
        break;
    case '503':
        codeMessage.innerHTML = "Email send successfully";
        break;
    
    default:
        break;
}