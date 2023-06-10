const root = document.documentElement;
const menu = document.querySelector(".menu");
const menuButton = document.querySelector(".menuButton");
const dimmer = document.querySelector(".dimmer");

window.addEventListener("resize", variableResize);
menuButton.addEventListener("click", toggleMenu);

variableResize();

// function that defines css variables on the website
function variableResize() {
    var containerWidth = document.querySelector("div.container").clientWidth;
    root.style.setProperty('--fontSize20', (containerWidth * 0.01) + "px");
}


// function that toggle the menu
function toggleMenu() {
    menu.classList.toggle("active");
    menuButton.classList.toggle("active");
    dimmer.classList.toggle("active");
}

window.onclick = function (event) {
    if (!event.target.matches(".menuButton") && !event.target.closest(".menuButton")) {
        if (
            menu.classList.contains("active") &&
            menuButton.classList.contains("active") &&
            dimmer.classList.contains("active")
        ) {
            menu.classList.remove("active");
            menuButton.classList.remove("active");
            dimmer.classList.remove("active");
        }
    }
};

menu.addEventListener("click", function (event) {
    event.stopPropagation();
});
