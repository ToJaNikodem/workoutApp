const urlParams = new URLSearchParams(window.location.search);
const code = urlParams.get('co');
const errorMessage = document.querySelector('.errorMessage');
const codeMessage = document.querySelector('.codeMessage');
const currentLink = window.location.href;

if (currentLink.includes('/pl/')) {
    switch (code) {
        case '001':
            errorMessage.innerHTML = "Błąd bazy danych";
            break;
        case '101':
            errorMessage.innerHTML = "Nieprawidłowe dane logowania";
            break;
        case '106':
            errorMessage.innerHTML = "Konto powiązane z tym emailem nie istniej";
            break;
        case '503':
            codeMessage.innerHTML = "Email odzyskiwania został wysłąny";
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
        case '106':
            errorMessage.innerHTML = "Account on that email doesn't exists";
            break;
        case '503':
            codeMessage.innerHTML = "Recovery email send successfully";
            break;

        default:
            break;
    }
}