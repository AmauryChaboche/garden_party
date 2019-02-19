// const button = document.getElementById("button_sweet_alert")

// button.addEventListener("click",(event) => {
//   const swalWithBootstrapButtons = Swal.mixin({
//     confirmButtonClass: 'btn btn-success',
//     cancelButtonClass: 'btn btn-danger',
//     buttonsStyling: false,
//   })

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
// })



// export { swalWithBootstrapButtons }
