const urlParams = new URLSearchParams(window.location.search);
const code = urlParams.get('co');
const errorMessage = document.querySelector('.errorMessage');
const currentLink = window.location.href;

if (currentLink.includes('/pl/')) {
    switch (code) {
        case '001':
            errorMessage.innerHTML = "Błąd bazy danych";
            break;
        case '101':
            errorMessage.innerHTML = "Nieprawidłowe dane logowania";
            break;
        case '102':
            errorMessage.innerHTML = 'Nazwa użytkownika zajęta';
            break;
        case '103':
            errorMessage.innerHTML = 'Konto na ten email już istnieje';
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
        case '102':
            errorMessage.innerHTML = 'Username is already taken';
            break;
        case '103':
            errorMessage.innerHTML = 'Account on that email already exists';
            break;

        default:
            break;
    }
}