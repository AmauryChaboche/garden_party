import mapboxgl from 'mapbox-gl';

  const initMapbox = () => {
  const mapElement = document.getElementById('map');

  const fitMapToMarkers = (map, markers) => {
    const bounds = new mapboxgl.LngLatBounds();
    markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
    map.fitBounds(bounds, { padding: 70, maxZoom: 12 });
  };


  if (mapElement) {
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/mapbox/streets-v10'
    });


    const markers = JSON.parse(mapElement.dataset.markers);
    const mapMarker = []
    fitMapToMarkers(map, markers);
    markers.forEach((marker) => {
      const element = document.createElement('div');
      element.className = 'marker';
      element.style.backgroundImage = `url('${marker.image_url}')`;
      element.style.backgroundSize = 'contain';
      element.style.width = '25px';
      element.style.height = '25px';
      // const popup = new mapboxgl.Popup().setHTML(marker.infoWindow);
      const newMarker = new mapboxgl.Marker(element)
        .setLngLat([ marker.lng, marker.lat ])
        .setPopup(new mapboxgl.Popup({ offset: 25 })
        .setHTML(marker.infoWindow))
        .addTo(map);
        mapMarker.push(newMarker)
        newMarker.getElement().dataset.markerId = marker.id;
        newMarker.getElement().addEventListener('mouseenter', (e) => toggleCardHighlighting(e) );
        // We put a microphone on listening for a mouseleave event
        newMarker.getElement().addEventListener('mouseleave', (e) => toggleCardHighlighting(e) );
      });
   fitMapToMarkers(map, markers);
   openInfoWindow(mapMarker);
  }
};

const openInfoWindow = (markers) => {
  // Select all cards
  const cards = document.querySelectorAll('.card-trip');
  cards.forEach((card, index) => {
    // Put a microphone on each card listening for a mouseenter event
    card.addEventListener('mouseenter', () => {
      // Here we trigger the display of the corresponding marker infoWindow with the "togglePopup" function provided by mapbox-gl
      markers[index].togglePopup();
    });
    // We also put a microphone listening for a mouseleave event to close the modal when user doesn't hover the card anymore
    card.addEventListener('mouseleave', () => {
      markers[index].togglePopup();
    });
  });
}

const toggleCardHighlighting = (event) => {
  // We select the card corresponding to the marker's id
  const card = document.querySelector(`[data-garden-id="${event.currentTarget.dataset.markerId}"]`);
  // Then we toggle the class "highlight" to the card
  card.classList.toggle('highlight');
}

export { initMapbox };
