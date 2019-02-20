const countDays = () => {
  const start_date = document.getElementById('booking_start_date_3i')
  const end_date = document.getElementById('booking_end_date_3i')
  const field = document.getElementById('number-days')
  const garden_price = document.getElementById('garden-price')

  if (start_date) {
    start_date.addEventListener('change', (event) => {
      field.innerText = (end_date.value - start_date.value) * parseInt(garden_price.innerText, 10)
    })
    end_date.addEventListener('change', (event) => {
      field.innerText = (end_date.value - start_date.value) * parseInt(garden_price.innerText, 10)
    })
  }
}

export { countDays };
