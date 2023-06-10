const warningMessageCloseButton = document.querySelector(".warningMessage .closeButton");
const warningMessage = document.querySelector(".warningMessage");
const deleteAccountButton = document.querySelector(".deleteAccountButton");

deleteAccountButton.addEventListener("click", toggleWarning);
warningMessageCloseButton.addEventListener("click", toggleWarning);

// function that toggles delete account warning
function toggleWarning() {
    warningMessage.classList.toggle("active");
}
