const categoryLabels = document.querySelectorAll(".categoryLabel");
const sortChoices = document.querySelectorAll(".filterChoice, #distanceDropdownList");
// const filterDistance = document.getElementById("distanceDropdownList")

// toggleActiveLabel(filterChoice);
// toggleActiveLabel(filterDistance);

const toggleActive = () => {
  if (categoryLabels) {
    toggleActiveLabel(categoryLabels);
  }
  if (sortChoices) {
    ActiveUnactiveItems(sortChoices);
  }
}

const toggleActiveLabel = (labels) => {
  labels.forEach ((label) => {
    label.addEventListener('click', (event) => {
      label.classList.toggle("active");
    })
  })
}

const ActiveUnactiveItems = (choices) => {
  choices.forEach ((choice) => {
      choice.addEventListener('click', () => {
        choices.forEach((choice) => {
          choice.classList.remove("active")
        })
          choice.classList.add("active");
      })
    })
}

export { toggleActive };

