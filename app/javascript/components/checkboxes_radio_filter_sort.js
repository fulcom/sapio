const selectAllCheckbox = () => {
  const checkboxExist = document.querySelector(".categoryCheckbox");
  const checkboxesCategories = document.querySelectorAll(".categoryCheckbox");
  const checkboxSelectAllCategories = document.getElementById("selectAllCategories");
  const textCheckboxSelectAllCategories = document.getElementById('selectAllCategoriesLabel');

  const checkboxesPlaces = document.querySelectorAll(".placeCheckbox");
  const checkboxSelectAllPlaces = document.getElementById("selectAllPlaces");
  const textCheckboxSelectAllPlaces = document.getElementById('selectAllPlacesLabel');

  const distanceCheckbox = document.getElementById("sortDistance");
  const distanceDropDown = document.querySelector(".dropDownList");


    const selectAllChexboxes = (checkbox, checkboxes, textCheckboxSelectAll) => {
      checkbox.addEventListener("click", (event) => {
        // console.log(event);
        if (checkbox.checked === true) {
          checkboxes.forEach((element) => {
            element.checked = true;
            textCheckboxSelectAll.innerText = "Tout désélectionner";
          })
        } else {
          checkboxes.forEach((element) => {
            element.checked = false;
            textCheckboxSelectAll.innerText = "Tout sélectionner";
          })
        }
      })
    }

  if (checkboxExist) {
  selectAllChexboxes(checkboxSelectAllCategories, checkboxesCategories, textCheckboxSelectAllCategories);
  // selectAllChexboxes(checkboxSelectAllPlaces, checkboxesPlaces, textCheckboxSelectAllPlaces);

  // j'écoute l'event sur le click d'une catégorie
  // qd je clique sur catégorie "Musée"
    // ça inspecte toutes les checkbox "place"
    // si index 1 de [activity.catégorie, activité.place] n'est catégory
    // style="visibility:hidden"
  // document.querySelector(".categoryCheckbox").addEventListener("click", (event) => {
  //   document.querySelectorAll(".placeCheckbox").forEach((checkbox) => {
  //     console.log(coucou);
  //    })
  // })

    // checkboxSelectAllCategories.addEventListener("click", (event) => {
    //   // console.log(event);
    //   if (checkboxSelectAllCategories.checked === true) {
    //     checkboxesCategories.forEach((element) => {
    //       element.checked = true;
    //       textCheckboxSelectAllCategories.innerText = "Tout désélectionner";
    //     })
    //   } else {
    //     checkboxesCategories.forEach((element) => {
    //       element.checked = false;
    //       textCheckboxSelectAllCategories.innerText = "Tout sélectionner";
    //     })
    //   }
    // })
  }

  if(distanceCheckbox) {
    distanceDropDown.addEventListener('click', (event) => {
      distanceCheckbox.checked = true;
    })
  }

}

export { selectAllCheckbox };

// document.getElementById("ModalSubmit").addEventListener("click", (event) => {
//   console.log("coucou");
//   event.preventDefault();
//   const form = document.getElementById("filterSortForm");
//   setTimeout(form.submit(), 5000);
// })


