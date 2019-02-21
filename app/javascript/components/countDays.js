const countDays = () => {
  const start_date = document.getElementById('booking_start_date')
  const end_date = document.getElementById('booking_end_date')

  const field = document.getElementById('number-days')
  const garden_price = document.getElementById('garden-price')

console.log(start_date.value)
console.log(end_date.value)

  if (start_date) {
    end_date.addEventListener('change', (event) => {
      const start = new Date(start_date.value);
      const end = new Date(end_date.value);
      const count = (end - start) / 60000 / 1440;
      field.innerText = count * parseInt(garden_price.innerText, 10)
    })
  }
}

export { countDays };
