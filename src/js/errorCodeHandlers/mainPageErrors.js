const urlParams = new URLSearchParams(window.location.search);
const code = urlParams.get('co');
const currentLink = window.location.href;

if (currentLink.includes('/pl/')) {
    switch (code) {
        case '001':
            // database error
            break;
        case '102':
            // username already exists
            break;
        case '111':
            // feedback invalid data
            break;
        case '112':
            // change username invalid data
            break;
        case '504':
            // feedback send successfully 
            break;
        case '505':
            // username changed successfully 
            break;

        default:
            break;
    }
} else {
    switch (code) {
        case '001':
            // database error
            break;
        case '102':
            // username already exists
            break;
        case '111':
            // feedback invalid data
            break;
        case '112':
            // change username invalid data
            break;
        case '504':
            // feedback send successfully 
            break;
        case '505':
            // username changed successfully 
            break;

        default:
            break;
    }
}