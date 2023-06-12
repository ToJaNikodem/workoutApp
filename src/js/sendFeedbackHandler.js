const sendFeedbackCloseButton = document.querySelector(".sendFeedbackBox .closeButton");
const sendFeedbackBox = document.querySelector(".sendFeedbackBox");
const sendFeedbackBoxButton = document.querySelector(".sendFeedback");

sendFeedbackBoxButton.addEventListener("click", toggleBox);
sendFeedbackCloseButton.addEventListener("click", toggleBox);

// function that toggles delete account warning
function toggleBox() {
    sendFeedbackBox.classList.toggle("active");
}
