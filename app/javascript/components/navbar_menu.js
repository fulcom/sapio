const burgerMenu = () => {
  const burger = document.getElementById("burger");
  burger.addEventListener('click', (event) => {
    document.querySelector("#navbar-max").classList.toggle("navbar-hidden");
  })
};

export { burgerMenu };

