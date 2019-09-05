const selectAllCheckbox = () => {

const checkboxExist = document.querySelector(".categoryCheckbox");
const categories = document.querySelectorAll(".categoryCheckbox:not(#selectAllCategories)");

const checkboxesCategories = document.querySelectorAll(".categoryCheckbox");
const checkboxSelectAllCategories = document.getElementById("selectAllCategories");
const textCheckboxSelectAllCategories = document.getElementById('selectAllCategoriesLabel');

// const checkboxesPlaces = document.querySelectorAll(".placeCheckbox");
// const checkboxSelectAllPlaces = document.getElementById("selectAllPlaces");
// const textCheckboxSelectAllPlaces = document.getElementById('selectAllPlacesLabel');

const distanceCheckbox = document.getElementById("sortDistance");
const distanceDropDown = document.querySelector(".dropDownListSort");




const optionTroiskm = document.getElementById("distanceTroisKm");
const radioTroiskm = document.getElementById("optionDistanceTroisKm");
const radioCinqkm = document.getElementById("optionDistanceCinqKm");
const optionCinqkm = document.getElementById("distanceCinqKm");
const radioDixkm = document.getElementById("optionDistanceDixKm");
const optionDixkm = document.getElementById("distanceDixKm");
const optionQuinzekm = document.getElementById("distanceQuinzeKm");
const radioQuinzekm = document.getElementById("optionDistanceQuinzeKm");

  if (checkboxExist) {
  selectAllChexboxes(checkboxSelectAllCategories, checkboxesCategories, textCheckboxSelectAllCategories);

  }

  if(distanceCheckbox) {
    distanceDropDown.addEventListener('click', (event) => {
      distanceCheckbox.checked = true;
    })
  }

  if (optionTroiskm) {
    optionTroiskm.addEventListener('click', (event) => {
      radioTroiskm.selected = true;
      distanceCheckbox.checked = true;
    })
}


  categories.forEach((category) => {
    category.addEventListener("click", (event) => {
      if (category.checked === true) {
        textCheckboxSelectAllCategories.innerText = "Tout désélectionner";
        checkboxSelectAllCategories.checked = true;
      }
    })
  })

  checkButton(optionTroiskm, radioTroiskm);
  checkButton(optionCinqkm, radioCinqkm);
  checkButton(optionDixkm, radioDixkm);
  checkButton(optionQuinzekm, radioQuinzekm);
}

const checkButton =(option, radio) => {
  if (option) {
    const distanceCheckbox = document.getElementById("sortDistance");
    option.addEventListener('click', (event) => {
      radio.selected = true;
      distanceCheckbox.checked = true;
    })
  }
}


const selectAllChexboxes = (checkbox, checkboxes, textCheckboxSelectAll) => {
  checkbox.addEventListener("click", (event) => {
    // console.log(event);
    if (checkbox.checked === true) {
      checkboxes.forEach((element) => {
        element.checked = true;
        element.nextElementSibling.classList.add("active");
        textCheckboxSelectAll.innerText = "Tout désélectionner";
      })
    } else {
      checkboxes.forEach((element) => {
        element.checked = false;
        element.nextElementSibling.classList.remove("active");
        textCheckboxSelectAll.innerText = "Tout sélectionner";
      })
    }
  })
}


export { selectAllCheckbox };

// document.getElementById("ModalSubmit").addEventListener("click", (event) => {
//   console.log("coucou");
//   event.preventDefault();
//   const form = document.getElementById("filterSortForm");
//   setTimeout(form.submit(), 5000);
// })

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


