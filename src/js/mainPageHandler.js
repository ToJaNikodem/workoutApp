const editNameIcon = document.querySelector(".editNameIcon");
const changeNameCloseButton = document.querySelector(".changeNameBox .closeButton");
const changeNameBox = document.querySelector(".changeNameBox");

const sendFeedbackCloseButton = document.querySelector(".sendFeedbackBox .closeButton");
const sendFeedbackBox = document.querySelector(".sendFeedbackBox");
const sendFeedbackBoxButton = document.querySelector(".sendFeedback");

const deleteAccountButton = document.querySelector(".deleteAccountButton");
const warningMessageCloseButton = document.querySelector(".warningMessage .closeButton");
const warningMessage = document.querySelector(".warningMessage");

editNameIcon.addEventListener("click", toggleChangeNameBox);
changeNameCloseButton.addEventListener("click", toggleChangeNameBox);

function toggleChangeNameBox() {
    changeNameBox.classList.toggle("active");
}

deleteAccountButton.addEventListener("click", toggleWarning);
warningMessageCloseButton.addEventListener("click", toggleWarning);

function toggleWarning() {
    warningMessage.classList.toggle("active");
}

sendFeedbackBoxButton.addEventListener("click", toggleBox);
sendFeedbackCloseButton.addEventListener("click", toggleBox);

function toggleBox() {
    sendFeedbackBox.classList.toggle("active");
}
