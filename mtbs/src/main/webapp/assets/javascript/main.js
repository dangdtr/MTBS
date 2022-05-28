// modal login parameters
// const loginModal = document.querySelector(".js-login");
// const registerModal = document.querySelector(".js-register");
// const loginBtns = document.querySelectorAll(".js-login-btn");
// const registerBtn = document.querySelector(".js-register-btn");

// const modalCloseBtns = document.querySelectorAll(".js-modal__close-btn");
// const modals = document.querySelectorAll(".js-modal");
// const modalContainers = document.querySelectorAll(".js-modal__container");

// mobileMenu parameters
const mobileMenu = document.querySelector('#header #mobile-menu');
const nav_bar = document.querySelector('#header .navigation')
const nav_items = document.querySelectorAll('#header .navigation a')

function toggleMobileMenu() {
    mobileMenu.classList.toggle('active')
    nav_bar.classList.toggle('active')
}

for (const nav_item of nav_items) {
    nav_item.addEventListener("click", () => {
        if (mobileMenu.classList.contains('active')) toggleMobileMenu()  // hide nav_bar
    })
}

mobileMenu.addEventListener('click', toggleMobileMenu)

// show loginModal
// for (const loginBtn of loginBtns) {
//     loginBtn.addEventListener("click", () => {
//         // if (mobileMenu.classList.contains('active')) toggleMobileMenu()  // hide nav_bar

//         loginModal.classList.add("open");
//         registerModal.classList.remove("open");
//     });
// }

// show registerModal
// registerBtn.addEventListener("click", () => {
//     // if (mobileMenu.classList.contains('active')) toggleMobileMenu()  // hide nav_bar

//     loginModal.classList.remove("open");
//     registerModal.classList.add("open");
// })

// hideModal
// function hideModal() {
//     loginModal.classList.remove("open");
//     registerModal.classList.remove("open");
// }

// for (const closeBtn of modalCloseBtns) {
//     closeBtn.addEventListener("click", hideModal);
// }

// for (const modal of modals) {
//     modal.addEventListener("click", hideModal);
// }

// for (const modalContainer of modalContainers) {
//     modalContainer.addEventListener("click", function (event) {
//         event.stopPropagation();
//     });
// }

// header - navigation - mobile menu