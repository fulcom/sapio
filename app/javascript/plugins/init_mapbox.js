import mapboxgl from 'mapbox-gl';

const mapElement = document.getElementById('map');

const getUserCoordinates = (map, callback) => {
  const mapElement = document.getElementById('map');
  if (mapElement) {
    navigator.geolocation.getCurrentPosition((position) => {
      callback(map, position.coords);
    });
  }
}

const buildMap = () => {
  mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
  return new mapboxgl.Map({
    container: 'map',
    style: 'mapbox://styles/fulcom/cjzx2hrmw0j6p1eq6iohyp0qj'
  });
};

const addMarkersToMap = (map, markers) => {
  markers.forEach((marker) => {
    const popup = new mapboxgl.Popup().setHTML(marker.infoWindow); // add this

    const element = document.createElement('i');
    element.className = `fas fa-map-pin ${marker.category}`;

    new mapboxgl.Marker(element)
      .setLngLat([ marker.lng, marker.lat ])
      .setPopup(popup) // add this
      .addTo(map);
  });
};

const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
  map.fitBounds(bounds, { padding: 70, maxZoom: 15 });
  map.scrollZoom.disable();
};

const initMapbox = () => {
  if (mapElement) {
    const map = buildMap();
    map.addControl(new mapboxgl.GeolocateControl({
      positionOptions: {
        enableHighAccuracy: true
      },
      fitBoundsOptions: {
        maxZoom: 11
      },
      trackUserLocation: true
    }));
    const markers = JSON.parse(mapElement.dataset.markers);
    addMarkersToMap(map, markers);
    fitMapToMarkers(map, markers);
    document.querySelector('#map-container').classList.add('d-none');
  }
};

export { initMapbox };
