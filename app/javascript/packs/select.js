const cards = document.querySelectorAll(".card-product");
let form = document.querySelector(".chop");
console.log(form);

cards.forEach(card => card.addEventListener("click", (event) => {
  if (card.classList.length === 1) {
    card.classList.add("selected");
  }
  else {
    card.classList.remove("selected");
  }
}));
