/* eslint no-console:0 */
// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//
// To reference this file, add <%= javascript_pack_tag 'application' %> to the appropriate
// layout file, like app/views/layouts/application.html.erb

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
