const changeNameCloseButton = document.querySelector(".changeNameBox .closeButton");
const changeNameBox = document.querySelector(".changeNameBox");
const editNameIcon = document.querySelector(".editNameIcon");
const alertCloseButton = document.querySelector(".messages .closeButton");
const messagesBox = document.querySelector(".messages");

editNameIcon.addEventListener("click", toggleChangeNameBox);
changeNameCloseButton.addEventListener("click", toggleChangeNameBox);
alertCloseButton.addEventListener("click", toggleAlert);

function toggleChangeNameBox() {
    changeNameBox.classList.toggle("active");
}

function toggleAlert() {
    messages.classList.toggle("active");
}
