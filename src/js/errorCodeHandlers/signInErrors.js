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
    case '105':
        // invalid token (alert)
        break;
    case '502':
        codeMessage.innerHTML = "Account created successfully, you can sign in now"
        break;
    case '502':
        codeMessage.innerHTML = "Account deleted successfully";
        break;
    case '506':
        codeMessage.innerHTML = "Password changed successfully";
        break;

    default:
        break;
}