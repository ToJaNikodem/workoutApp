const url = new URL(window.location.href);
const urlParams = new URLSearchParams(window.location.search);
const code = urlParams.get('co');
const isPolish =  window.location.href.includes('/pl/');

const alertBox = document.querySelector('.alert');

if (code) {
  const messages = messageMap[code];
  if (messages) {
    const message = isPolish ? messages.pl : messages.en;
    alertBox.innerHTML = message;
    toggleAlert(messages.type);
  }
}

function toggleAlert(type) {
  alertBox.style.backgroundColor = type === 'error' ? 'var(--alertRed)' : 'var(--alertGreen)';
  alertBox.classList.add('active');
  setTimeout(() => {
    alertBox.classList.remove('active');
  }, 5000);
  urlParams.set('co', '');
  url.search = urlParams.toString();
  window.history.replaceState(null, null, url.toString());
}
