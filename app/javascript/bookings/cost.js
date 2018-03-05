
function calculateCost () {
  const button = document.getElementById("cost");
  button.addEventListener("click", bindButton);
}

function bindButton (event) {
  event.preventDefault();
  const days = getDays();
  const costPerDay = parseInt(document.getElementById("price").innerText);
  const cost = days * costPerDay;
  insertIntoHTML(cost);
}

function insertIntoHTML(a) {
  const bookingcost = document.getElementById("bookingcost");
  const costInHTML = `This booking costs: € ${a}`;
  bookingcost.innerHTML = costInHTML;
}

function getDays () {
    const strt = document.getElementById("start").value;
    const nd = document.getElementById("end").value;
    return numberOfDays(new Date(strt), new Date(nd))
}

function numberOfDays(a, b) {
  var msInADay = 24 * 60 * 60 * 1000;
  var utc1 = Date.UTC(a.getFullYear(), a.getMonth(), a.getDate());
  var utc2 = Date.UTC(b.getFullYear(), b.getMonth(), b.getDate());
  return Math.floor((utc2 - utc1) / msInADay);
}

export { calculateCost };
