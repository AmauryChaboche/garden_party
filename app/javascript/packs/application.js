import "bootstrap";

import Swal from 'sweetalert2'

import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import { initMapbox } from '../plugins/init_mapbox';
import "../plugins/flatpickr"

initMapbox();

import { countDays } from '../components/countDays'

countDays();

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



//   swalWithBootstrapButtons.fire({
//     title: 'Are you sure?',
//     text: "You won't be able to revert this!",
//     type: 'warning',
//     showCancelButton: true,
//     confirmButtonText: 'Yes, book it!',
//     cancelButtonText: 'No, cancel!',
//     reverseButtons: true
//   }).then((result) => {
//     if (result.value) {
//       swalWithBootstrapButtons.fire(
//         'Booked!',
//         'Your garden is booked.',
//         'success'
//       )
//     } else if (
//       // Read more about handling dismissals
//       result.dismiss === Swal.DismissReason.cancel
//     ) {
//       swalWithBootstrapButtons.fire(
//         'Cancelled',
//         'This garden wil not be yours :)',
//         'Bye'
//       )
//     }
//   })
