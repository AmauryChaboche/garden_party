import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.getElementById('garden_address');
  if (addressInput) {
    places({ container: addressInput });
  }
};

console.log("hello autocomplete")

export { initAutocomplete };

