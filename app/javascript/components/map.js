const mapAppear = () => {
  const toggleButton = document.querySelector(".toggle-map-button");
  const toggleElements = document.querySelectorAll(".toggle-map");
  const buttonImages = document.querySelectorAll(".toggle-map-button *");

  if (toggleButton) {
    toggleButton.addEventListener("click", () => {
      toggleElements.forEach((element) => {
        element.classList.toggle("d-none");
      });
      buttonImages.forEach((element) => {
        element.classList.toggle("d-none");
      });
      document.querySelector(".mapboxgl-ctrl-geolocate").click();
    });
  }
};

export { mapAppear };




