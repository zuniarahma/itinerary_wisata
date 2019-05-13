<!DOCTYPE html>

<html>
	<head>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
    <meta charset="utf-8">
    <title>Waypoints in Directions</title>
    <style>
      #right-panel {
        font-family: 'Roboto','sans-serif';
        line-height: 30px;
        padding-left: 10px;
      }

      #right-panel select, #right-panel input {
        font-size: 15px;
      }

      #right-panel select {
        width: 100%;
      }

      #right-panel i {
        font-size: 12px;
      }
      html, body {
        height: 100%;
        margin: 0;
        padding: 0;
      }
      #map {
        height: 100%;
        float: left;
        width: 70%;
        height: 100%;
      }
      #right-panel {
        margin: 20px;
        border-width: 2px;
        width: 20%;
        height: 400px;
        float: left;
        text-align: left;
        padding-top: 0;
      }
      #directions-panel {
        margin-top: 10px;
        background-color: #FFEE77;
        padding: 10px;
        overflow: scroll;
        height: 174px;
      }
      #floating-panel {
        position: absolute;
        top: 10px;
        left: 25%;
        z-index: 5;
        background-color: #fff;
        padding: 5px;
        border: 1px solid #999;
        text-align: center;
        font-family: 'Roboto','sans-serif';
        line-height: 30px;
        padding-left: 10px;
      }
      #button {
        position: right;
        top: 10px;
        left: 25%;
        z-index: 5;
        background-color: #fff;
        padding: 5px;
        border: 1px solid #999;
        text-align: center;
        font-family: 'Roboto','sans-serif';
        line-height: 30px;
        padding-left: 10px;
      }
    </style>
	</head>
	
<body>

    <div id="floating-panel">
      <b>Mode of Travel: </b>
      <select id="mode">
        <option value="DRIVING">Driving</option>
        <option value="WALKING">Walking</option>
        <option value="BICYCLING">Bicycling</option>
        <option value="TRANSIT">Transit</option>
        
      </select>
    </div>

    <button id="button">My Location</button>
  
    <div id="map"></div>
    <div id="right-panel">
    <div>
    <b>Start:</b>
    <select id="start">
      <option value="Surabaya">Surabaya, ID</option>
      <option value="Lamongan, ID">Lamongan, ID</option>
      <option value="Gresik">Gresik</option>
      <option value="Bojonegoro, ID">Bojonegoro, ID</option>
    </select>
    <br>
    <b>Waypoints:</b> <br>
    <i>(Ctrl+Click or Cmd+Click for multiple selection)</i> <br>
    <select multiple id="waypoints">
      <option value="Heroes Monument, ID">Heroes Monument, Surabaya</option>
      <option value="Monumen Kapal Selam, ID">Monumen Kapal Selam, Surabaya</option>
      <option value="Alun - Alun Kota Wisata Batu, ID">Alun - Alun Kota Wisata Batu, Batu</option>
      <option value="Batu Night Spectacular (BNS)">Batu Night Spectacular (BNS), Batu</option>
      <option value="Puncak B29, ID">Puncak B29, Lumajang</option>
      <option value="Mount Bromo, ID">Mount Bromo, Pasuruan</option>
      <option value="Pantai Tiga Warna, ID">Pantai Tiga Warna, Malang</option>
    </select>
    <br>
    <b>End:</b>
    <select id="end">
      <option value="Probolinggo">Probolinggo, ID</option>
      <option value="Pacitan, ID">Pacitan, ID</option>
      <option value="Banyuwangi, ID">Banyuwangi, ID</option>
      <option value="Malang, ID">Malang, ID</option>
      <option value="Surabaya,ID">Surabaya, ID</option>
    </select>
    <br>
      <input type="submit" id="submit">
    </div>
    <div id="directions-panel"></div>
    </div>
    <script type="text/javascript"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
		{{-- <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC9wpdoXipOnUsg4ucjOsRNFkkUPYyMK48&callback=initMap" async defer></script> --}}

		<script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC9wpdoXipOnUsg4ucjOsRNFkkUPYyMK48&callback=initMap">    
    </script>
    <script type="text/javascript" src="../resources/js/transit.js"></script>
   
  </body>

{{-- <body>

  <h1>Laravel 5 - Multiple markers in google map using gmaps.js</h1>

	<div id="map"></div>
    <script>
      var map;
      function initMap() {
        map = new google.maps.Map(document.getElementById('map'), {
          center: {lat: -34.397, lng: 150.644},
          zoom: 8
        });
      }
    </script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC9wpdoXipOnUsg4ucjOsRNFkkUPYyMK48&callback=initMap" async defer></script>

</body> --}}

</html>