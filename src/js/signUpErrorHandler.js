const urlParams = new URLSearchParams(window.location.search);
const error = urlParams.get('re');
const errorMessage = document.querySelector('.errorMessage');

  if (error == '01') {
    errorMessage.innerHTML = 'Username is already taken';
  } else if (error == '11') {
    errorMessage.innerHTML = 'Nazwa użytkownika jest zajęta';
  } else if (error == '02') {
    errorMessage.innerHTML = 'Account with that email exists';
  } else if (error == '12') {
    errorMessage.innerHTML = 'Konto na ten email już istnieje';
  }