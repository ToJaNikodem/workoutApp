$(document).ready(function () {
    const root = document.documentElement;
    const menu = $(".menu");
    const menuButton = $(".menuButton");
    const dimmer = $(".dimmer");

    variableResize();

    $(window).on("beforeunload", function () {
        variableResize();
    });

    $(window).on("resize", variableResize);
    menuButton.on("click", toggleMenu);

    function variableResize() {
        var containerWidth = $("div.container").width();
        root.style.setProperty("--fontSize20", containerWidth * 0.008 + "px");
    }

    function toggleMenu() {
        menu.toggleClass("active");
        menuButton.toggleClass("active");
        dimmer.toggleClass("active");
    }

    $(window).on("click", function (event) {
        if (
            !$(event.target).is(".menuButton") &&
            !$(event.target).closest(".menuButton")
        ) {
            if (
                menu.hasClass("active") &&
                menuButton.hasClass("active") &&
                dimmer.hasClass("active")
            ) {
                menu.removeClass("active");
                menuButton.removeClass("active");
                dimmer.removeClass("active");
            }
        }
    });

    menu.on("click", function (event) {
        event.stopPropagation();
    });
});
