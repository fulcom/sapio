const openModal = () => {
  const btn = document.querySelector(".pass-generator");
  if (btn) {
    btn.addEventListener("click", (e) => {
      $('#exampleModal').modal()
    })
  };
};

export { openModal }
