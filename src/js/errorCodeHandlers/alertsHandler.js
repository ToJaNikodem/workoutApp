const url = new URL(window.location.href);
const urlParams = new URLSearchParams(window.location.search);
const code = urlParams.get('co');
const isPolish = window.location.href.includes('/pl/');

const alertBox = $('.alert');

if (code) {
  const messages = messageMap[code];
  if (messages) {
    const message = isPolish ? messages.pl : messages.en;
    alertBox.html(message);
    toggleAlert(messages.type);
  }
}

function toggleAlert(type) {
  const backgroundColor = type === 'error' ? 'var(--alertRed)' : 'var(--alertGreen)';
  alertBox.css('background-color', backgroundColor);
  alertBox.addClass('active');
  setTimeout(() => {
    alertBox.removeClass('active');
  }, 5000);
  urlParams.set('co', '');
  url.search = urlParams.toString();
  window.history.replaceState(null, null, url.toString());
}