const navbarClass = () => {
  const navbarTabs = document.querySelectorAll(".navbar-tab")
  navbarTabs.forEach((element) => {
    element.addEventListener("click", () => {
      element.classList.toggle("purple-tab");
  });
  })
};

export { navbarClass };
