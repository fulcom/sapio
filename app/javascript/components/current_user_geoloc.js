// var x = document.getElementById("sortDistance");
  const long = document.getElementById("longitudeUser");
  const lat = document.getElementById("latitudeUser");

  const getLocation = () => {
    if (navigator.geolocation) {
      navigator.geolocation.getCurrentPosition(showPositionLongitude);
      navigator.geolocation.getCurrentPosition(showPositionLatitude);
      // navigator.geolocation.getCurrentPosition(showPosition);

    } else {
      x.innerHTML = "Geolocation is not supported by this browser.";
    }
  }

  // function showPosition(position) {
  //   x.value = "Latitude: " + position.coords.latitude +
  //   "<br>Longitude: " + position.coords.longitude;
  // }

  const showPositionLongitude = (position) => {
    long.value = position.coords.longitude;
  }

  const showPositionLatitude = (position) => {
    lat.value = position.coords.latitude;
  }


export { getLocation };

