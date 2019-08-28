const mapAppear = () => {
  const toggleButton = document.querySelector(".toggle-map-button");
  const toggleElements = document.querySelectorAll(".toggle-map");
  const buttonImages = document.querySelectorAll(".toggle-map-button *");
  toggleButton.addEventListener("click", () => {
    toggleElements.forEach((element) => {
      element.classList.toggle("d-none");
    });
    buttonImages.forEach((element) => {
      element.classList.toggle("d-none");
    });
  });
};

export { mapAppear };




