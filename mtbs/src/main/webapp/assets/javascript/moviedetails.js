const optionItem1 = document.querySelector('.js-option-item1')
const optionItem2 = document.querySelector('.js-option-item2')
const movieDetailsTextDes = document.querySelector('.js-text-des')
const movieDetailsTrailerDes = document.querySelector('.js-trailer-des')

optionItem1.addEventListener('click', () => {
    optionItem2.classList.remove('active')
    optionItem1.classList.add('active')
    movieDetailsTrailerDes.classList.remove('active')
    movieDetailsTextDes.classList.add('active')
})

optionItem2.addEventListener('click', () => {
    optionItem1.classList.remove('active')
    optionItem2.classList.add('active')
    movieDetailsTextDes.classList.remove('active')
    movieDetailsTrailerDes.classList.add('active')
})