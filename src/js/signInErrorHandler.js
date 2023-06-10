const urlParams = new URLSearchParams(window.location.search);
const error = urlParams.get('le');
const errorMessage = document.querySelector('.errorMessage');

  if (error == '01') {
    errorMessage.innerHTML = 'Invalid username/email or password';
  } else if (error == '11') {
    errorMessage.innerHTML = 'Niepoprawna nazwa użytkownika/emali lub hasło';
  }