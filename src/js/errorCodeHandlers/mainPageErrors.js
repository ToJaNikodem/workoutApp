const currentLink = window.location.href;
const alertBox = document.querySelector('.alert');
var url = new URL(window.location.href);
var urlParams = new URLSearchParams(window.location.search);
var code = urlParams.get('co');

if (currentLink.includes('/pl/')) {
    switch (code) {
        case '001':
            alertBox.innerHTML = "Błąd bazy danych";
            toggleAlert('e');
            break;
        case '102':
            alertBox.innerHTML = "Nazwa użytkownika zajęta";
            toggleAlert('e');
            break;
        case '111':
            alertBox.innerHTML = "Błąd podczas wysyłania opini";
            toggleAlert('e');
            break;
        case '112':
            alertBox.innerHTML = "Błąd podczas zmiany nazwy użytkownika";
            toggleAlert('e');
            break;
        case '504':
            alertBox.innerHTML = "Opinia wysłana pomyślnie";
            toggleAlert();
            break;
        case '505':
            alertBox.innerHTML = "Nazwa użytkownika zmieniona pomyślnie";
            toggleAlert();
            break;

        default:
            break;
    }
} else {
    switch (code) {
        case '001':
            alertBox.innerHTML = "Database error";
            toggleAlert('e');
            break;
        case '102':
            alertBox.innerHTML = "Username is already taken";
            toggleAlert('e');
            break;
        case '111':
            alertBox.innerHTML = "Error when sending feedback";
            toggleAlert('e');
            break;
        case '112':
            alertBox.innerHTML = "Error when changing username";
            toggleAlert('e');
            break;
        case '504':
            alertBox.innerHTML = "Feedback send successfully";
            toggleAlert();
            break;
        case '505':
            alertBox.innerHTML = "Username changed successfully";
            toggleAlert();
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