const errorMessage = document.querySelector('.errorMessage');
const codeMessage = document.querySelector('.codeMessage');
const alertBox = document.querySelector('.alert');
const currentLink = window.location.href;
var urlParams = new URLSearchParams(window.location.search);
var code = urlParams.get('co');


if (currentLink.includes('/pl/')) {
    switch (code) {
        case '001':
            errorMessage.innerHTML = "Błąd bazy danych";
            break;
        case '101':
            errorMessage.innerHTML = "Nieprawidłowe dane logowania";
            break;
        case '105':
            alertBox.innerHTML = "Niepoprawny token odzyskiwania";
            toggleAlert('e');
            break;
        case '501':
            codeMessage.innerHTML = "Konto stworzone pomyślnie, możesz się teraz zalogować"
            break;
        case '502':
            codeMessage.innerHTML = "Konto usunięte pomyślnie";
            break;
        case '506':
            codeMessage.innerHTML = "Hasło zmienione pomyślnie";
            break;

        default:
            break;
    }
} else {
    switch (code) {
        case '001':
            errorMessage.innerHTML = "Database error";
            break;
        case '101':
            errorMessage.innerHTML = "Invalid login data";
            break;
        case '105':
            alertBox.innerHTML = "Invalid recovery token";
            toggleAlert('e');
            break;
        case '501':
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
}

function toggleAlert(type) {
    if (type == 'e') {
        alertBox.style.backgroundColor = 'var(--alertRed)';
    } else {
        alertBox.style.backgroundColor = 'var(--alertGreen)';
    }
    alertBox.classList.add("active");
    setTimeout(function () {
        alertBox.classList.remove("active");
    }, 5000);
    urlParams.set('co', '');
    url.search = urlParams.toString();
    window.history.replaceState(null, null, url.toString());
}