const burgerMenu = () => {
  const burger = document.getElementById("burger");
  if (burger) {
    burger.addEventListener('click', (event) => {
      document.querySelector("#navbar-max").classList.toggle("navbar-hidden");
    })
  };
};

export { burgerMenu };

