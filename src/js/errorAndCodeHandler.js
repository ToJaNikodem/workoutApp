const urlParams = new URLSearchParams(window.location.search);
const errorMessage = document.querySelector('.errorMessage');
const codeMessage = document.querySelector('.codeMessage');
const code = urlParams.get('co');
const error = urlParams.get('er');
const messages = document.querySelector(".messages");

switch (error) {
  case '01':
    errorMessage.innerHTML = 'Invalid username/email or password';
    break;
  case '11':
    errorMessage.innerHTML = 'Niepoprawna nazwa użytkownika/emali lub hasło';
    break;
  case '02':
    errorMessage.innerHTML = 'Username is already taken';
    break;
  case '12':
    errorMessage.innerHTML = 'Nazwa użytkownika jest zajęta';
    break;
  case '03':
    errorMessage.innerHTML = 'Account with that email exists';
    break;
  case '13':
    errorMessage.innerHTML = 'Konto na ten email już istnieje';
    break;
  case '04':
    errorMessage.innerHTML = 'Username is already taken';
    messages.classList.toggle("active");
    break;
  case '14':
    errorMessage.innerHTML = 'Nazwa użytkownika jest zajęta';
    messages.classList.toggle("active");
    break;
  default:
    break;
}

switch (code) {
  case '01':
    codeMessage.innerHTML = 'Account created successfully, you can sign in now';
    break;
  case '11':
    codeMessage.innerHTML = 'Konto stworzone pomyślnie, możesz sie teraz zalogować';
    break;
  case '02':
    codeMessage.innerHTML = 'Account deleted successfully';
    break;
  case '12':
    codeMessage.innerHTML = 'Konto usunięte pomyślnie';
    break;
  case '03':
    codeMessage.innerHTML = 'Username changed successfully';
    messages.classList.toggle("active");
    break;
  case '13':
    codeMessage.innerHTML = 'Nazwa użytkownika zmieniona pomyślnie';
    messages.classList.toggle("active");
    break;
    case '04':
    codeMessage.innerHTML = 'Feedback send successfully';
    messages.classList.toggle("active");
    break;
    case '14':
    codeMessage.innerHTML = 'Opinia wysłana pomyślnie';
    messages.classList.toggle("active");
    break;

  default:
    break;
}


