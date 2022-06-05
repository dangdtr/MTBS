$(document).ready(() => {
    //setting owl carousel
    // slide movie
    let navText = ["<i class = 'bx bx-chevron-left'></i>",
        "<i class = 'bx bx-chevron-right'></i>"]

    $('#hero-carousel').owlCarousel({
        items: 1,
        dots: false,
        loop: true,
        nav: true,
        navText: navText,
        autoplay: true,
        autoplayTimeout: 3000,
        autoplayHoverPause: true,
        smartSpeed: 500,
    })

    $('#detail-movies-slide').owlCarousel({
        items: 5,
        dots: false,
        loop: true,
        nav: true,
        navText: navText,
        autoplay: true,
        autoplayTimeout: 3000,
        autoplayHoverPause: true,
        smartSpeed: 1000,
        responsive: {
            300: {
                items: 1
            },

            500: {
                items: 3
            },
            1280: {
                items: 4
            },
            1600: {
                items: 6
            }
        }
    })
})