window.addEventListener('resize', variableResize);

const root = document.documentElement;

variableResize();

// function that defines css variables on the website
function variableResize() {
    var containerWidth = document.querySelector("div.container").clientWidth;
    var containerHeight = document.querySelector("div.container").clientHeight;
    root.style.setProperty('--fontSize40', (containerWidth * 0.02) + "px");
    root.style.setProperty('--fontSize32', (containerWidth * 0.017) + "px");
    root.style.setProperty('--fontSize20', (containerWidth * 0.01) + "px");
    root.style.setProperty('--borderRadius', (containerWidth * 0.005) + "px");
    root.style.setProperty('--standardInputWidth', (containerWidth * 0.21) + "px");
    root.style.setProperty('--mainButtonHeight', (containerHeight * 0.065) + "px");
}
