import flatpickr from 'flatpickr';
import 'flatpickr/dist/flatpickr.min.css';

flatpickr(".datepickr", {});

import "bootstrap";
import "../plugins/flatpickr"

import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import { initMapbox } from '../plugins/init_mapbox';

initMapbox();

// import "../plugins/flatpickr"

import { initStarRating } from '../plugins/init_star_rating';

initStarRating();

import { mapAppear } from '../components/map';

mapAppear();


// import { geolocalisation } from '../components/current_user_geoloc';
// geolocalisation();


// import filter from '../components/filter_categories';
// filter();


