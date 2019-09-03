
// const filter = (() => {
//   const checkboxes = document.querySelectorAll(".categoryCheckbox");
//   const checkboxSelectedArray = [];
//   const button = document.querySelector("#ModalSubmit")
//   if (checkboxes) { // rajouter cette ligne pour éviter que le fichier se lance partout (ici que qd on a des checboxes)
//     checkboxes.forEach ((checkbox) => {
//       checkbox.addEventListener('click', (event) => {
//         const checkboxSelected = event.currentTarget;
//         checkboxSelectedArray.push(checkbox.value);
//         console.log(checkboxSelected);
//         console.log(checkboxSelectedArray)
//       });
//     });
//   button.addEventListener('click', (event) => {
//     event.preventDefault();
//     filterUrl(checkboxSelectedArray)
//   });

//   };
// });

// const filterUrl = (query) => {
//   fetch(`/activities/filter_sort/?s=${query}`)
//     .then(response => response.json())
//     .then((data) => {
//       console.log(data);
//       data = checkboxSelectedArray;
//     });
// };

// export default filter;

  // const checkboxSelected = document.querySelectorAll(".categoryCheckbox:checked");
  // const checkboxSelectedArray = [];
  // checkboxSelected.forEach((checkbox) => {
  //   checkboxSelectedArray.push(checkbox["value"]);
  // });

  // Renvoie la value de l'input checkbox
  // $(document).ready(function(){
    // $(".category-choice").click(function(){
    //  $(this).toggleClass("active");
    // });
  // });

  // $(document).ready(function() {
  // checkboxSelectedArray = $(#foo).data('bar');
// });
