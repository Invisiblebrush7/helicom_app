let modal = document.querySelector("#modal");

var btns = document.querySelectorAll(".open-modal");

let exitButton = document.querySelector('.close-modal');

let body = document.querySelector('body');

// When the user clicks on the button, open the modal
btns.forEach((btn) => {
  btn.addEventListener('click', (e) => {
    e.preventDefault();
    modal.classList.toggle('modal-active');

    if (modal.classList.contains("modal-active")) {
        // Disable scroll
        body.style.overflow = "hidden";
    } else {
        // Enable scroll
        body.style.overflow = "auto";
    }

  });
});

//When the user clicks on <span> (x), close the modal
exitButton.addEventListener('click', (e) => {
  modal.classList.toggle('modal-active');
  if (modal.classList.contains("modal-active")) {
      // Disable scroll
      body.style.overflow = "hidden";
  } else {
      // Enable scroll
      body.style.overflow = "auto";
  }
});

//When the user clicks anywhere outside of the modal, close it
window.addEventListener('click', (e) => {
  if (e.target == modal) {
    modal.classList.toggle('modal-active');
    if (modal.classList.contains("modal-active")) {
        // Disable scroll
        body.style.overflow = "hidden";
    } else {
        // Enable scroll
        body.style.overflow = "auto";
    }
  }
});
