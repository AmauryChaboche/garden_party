import "bootstrap";

import Swal from 'sweetalert2'

import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import { initMapbox } from '../plugins/init_mapbox';

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


