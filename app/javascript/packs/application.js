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

import { openModal } from '../components/modal_opener';

openModal();



import { selectAllCheckbox } from '../components/checkboxes_radio_filter_sort';
selectAllCheckbox();

import { getLocation } from '../components/current_user_geoloc';
window.getLocation = getLocation;

// import filter from '../components/filter_categories';
// filter();


import { burgerMenu } from '../components/navbar_menu';
burgerMenu();

import { toggleActive } from '../components/checkboxes_radio_active';
toggleActive();






