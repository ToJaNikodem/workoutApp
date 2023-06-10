const urlParams = new URLSearchParams(window.location.search);
const error = urlParams.get('le');
const code = urlParams.get('rc');
const errorMessage = document.querySelector('.errorMessage');
const codeMessage = document.querySelector('.codeMessage');

  if (error == '01') {
    errorMessage.innerHTML = 'Invalid username/email or password';
  } else if (error == '11') {
    errorMessage.innerHTML = 'Niepoprawna nazwa użytkownika/emali lub hasło';
  }

  if (code == '01') {
    codeMessage.innerHTML = 'Account created successfully, you can sign in now';
  } else if (code == '11') {
    codeMessage.innerHTML = 'Konto stworzone pomyślnie, możesz sie teraz zalogować';
  }