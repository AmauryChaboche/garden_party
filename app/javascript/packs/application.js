import "bootstrap";

import Swal from 'sweetalert2'

const button = document.getElementById("button_sweet_alert")
if (button) {
    button.addEventListener("click",(event) => {
        Swal.fire({
      position: 'center',
      type: 'success',
      title: 'Your garden has been booked',
      showConfirmButton: false,
      timer: 1500
    })
  })
}


