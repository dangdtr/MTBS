// booking parameters
const seatsAndScreen = document.querySelector("#booking .seats-screen"); /* Nên dùng list các row-seat hơn, tuy nhiên thêm vòng lặp */
const seats = document.querySelectorAll("#booking .row-seat .seat:not(.occupied)"); /* seat can toggle */
const countSelectedSeat = document.querySelector("#booking .seats-number");
const countPremiumSelectedSeat = document.querySelector('#booking .seats-premium-number')
const totalPrice = document.querySelector("#booking .total-price");


// const ticketTypes = document.querySelector("#booking #ticket-types");
const regularTicketPrice = 120000;
const premiumTicketPrice = 150000;

// let ticketPrice = +ticketTypes.value;

// booking function
function updateSelectedCount() {
  const regularSelectedSeats = document.querySelectorAll(".row-seat .seat.selected:not(.premium)");
  const premiumSelectedSeats = document.querySelectorAll(".row-seat .seat.selected.premium");

  countSelectedSeat.innerHTML = regularSelectedSeats.length + premiumSelectedSeats.length;
  countPremiumSelectedSeat.innerHTML = premiumSelectedSeats.length;
  totalPrice.innerHTML = (+regularSelectedSeats.length * regularTicketPrice + +premiumSelectedSeats.length * premiumTicketPrice).toString().replace(/\B(?=(\d{3})+(?!\d))/g, '.');

  return totalPrice;
}

// seats.addEventListener("change", (e) => {
//   console.log(e.target.classList);
// });

seatsAndScreen.addEventListener("click", (e) => {
  if (e.target.classList.contains("seat") && !e.target.classList.contains("occupied")) {
    e.target.classList.toggle("selected");
  }

  updateSelectedCount();
});

var today = new Date().toISOString().split('T')[0];
document.querySelector('.booking-form-input #date-booking').setAttribute('min', today);