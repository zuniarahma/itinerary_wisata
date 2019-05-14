
  // <script>
  //   var datadurasi = [A, B, C, D, E];
  //   var lokal = [];
  //   var db = [];
  //   var asal;
  //   var tujuan;

  //   function getTransit(asal, tujuan){

  //   }


  //   </script>
    
//======================

var nodes = [];
var durations = [];
var directionsService;
var directionsDisplay;
var asal;
var tujuan;
    

      function initMap() {
        directionsService = new google.maps.DirectionsService;
        directionsDisplay = new google.maps.DirectionsRenderer;
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 8.5,
          center: {lat: -7.280873, lng: 112.740428}
        });
        directionsDisplay.setMap(map);
        var transitLayer = new google.maps.TransitLayer();
        transitLayer.setMap(map);
        var trafficLayer = new google.maps.TrafficLayer();
        trafficLayer.setMap(map);

        // Add "my location" button
        var myLocationDiv = document.createElement('div');
        new getMyLocation(myLocationDiv, map);
        var posisiawal = {};
          
        map.controls[google.maps.ControlPosition.TOP_RIGHT].push(myLocationDiv);
        
          function getMyLocation(myLocationDiv, map) {
              var myLocationBtn = document.getElementById('button');
              // myLocationBtn.innerHTML = 'My Location';
              // myLocationBtn.className = 'large-btn';
              // myLocationBtn.style.margin = '5px';
              // myLocationBtn.style.opacity = '0.95';
              // myLocationBtn.style.borderRadius = '3px';
              myLocationDiv.appendChild(myLocationBtn);
          
              google.maps.event.addDomListener(myLocationBtn, 'click', function() {
                  
                  navigator.geolocation.getCurrentPosition(function(success) {
                      map.setCenter(new google.maps.LatLng(success.coords.latitude, success.coords.longitude));
                      map.setZoom(12);
                      posisiawal = new google.maps.LatLng(success.coords.latitude, success.coords.longitude);
                      nodes.push(posisiawal);
                      
                      new google.maps.Marker({position: new google.maps.LatLng(success.coords.latitude, success.coords.longitude), map: map});
                  });
              });
          }

      }
      
      // Get all durations depending on travel type
      function getDurations(callback) {
        
        var service = new google.maps.DistanceMatrixService();
        var selectedMode = document.getElementById('mode').value;
        service.getDistanceMatrix({
            origins: nodes,
            destinations: nodes,
            travelMode: google.maps.TravelMode[selectedMode]
            //travelMode: google.maps.TravelMode[$('#travel-type').val()],
            //avoidHighways: parseInt($('#avoid-highways').val()) > 0 ? true : false,
            //avoidTolls: false,
        }, function(distanceData) {
            // Create duration data array
            var nodeDistanceData;
            for (originNodeIndex in distanceData.rows) {
                nodeDistanceData = distanceData.rows[originNodeIndex].elements;
                durations[originNodeIndex] = [];
                for (destinationNodeIndex in nodeDistanceData) {
                    if (durations[originNodeIndex][destinationNodeIndex] = nodeDistanceData[destinationNodeIndex].duration == undefined) {
                        alert('Error: couldn\'t get a trip duration from API');
                        return;
                    }
                    durations[originNodeIndex][destinationNodeIndex] = nodeDistanceData[destinationNodeIndex].duration.value;
                }
            }
            
            if (callback != undefined) {
                callback();
            }
        });
      }
   
      // Create listeners
    $(document).ready(function() {
      document.getElementById('submit').addEventListener('click', function() {
        calculateAndDisplayRoute(directionsService, directionsDisplay);
        document.getElementById('mode').addEventListener('change', function() {
          calculateAndDisplayRoute(directionsService, directionsDisplay);
        });
      });

      function calculateAndDisplayRoute(directionsService, directionsDisplay) {
        var waypts = [];
        var selectedMode = document.getElementById('mode').value;
        var checkboxArray = document.getElementById('waypoints');
        //** */
        
        for (var i = 0; i < checkboxArray.length; i++) {
          if (checkboxArray.options[i].selected) {
            waypts.push({
              location: checkboxArray[i].value,
              stopover: true
            });
            nodes.push(checkboxArray[i].value);
          }
        }
        console.log(waypts);
        
        // for(i=0 ; i < checkboxArray.length; i++){
        //   for(i=i+1 ; i < checkboxArray.length; i++){
        //     getTransit();
        //   }                  
        // }        
        
        //Nearest Neighbour Algorithm
        getDurations(function () {
          var datadurasi = durations;
          var rute = [];

          console.log(datadurasi.length);
          var DataRoute = getRute(0,datadurasi.length);
          console.log(DataRoute);
                    
          function getRute(myLocIndex, jumlahKota) {
            var ruteNN = initZeros(jumlahKota);
            ruteNN[0] = myLocIndex;
      
            for (let i = 0; i < ruteNN.length; i++) {
              var tempDuration = getOneRowDuration(ruteNN[i]);
      
              for (let j = 0; j < tempDuration.length; j++) {
                var indexSudahAdaDiRute = false;
                for (const route of ruteNN) {
                  if(j == route)
                    indexSudahAdaDiRute = true;
                }
                
                if (tempDuration[j] == 0 || indexSudahAdaDiRute == true) {
                  tempDuration[j] = Number.MAX_SAFE_INTEGER
                }
              }
      
              var min = getMin(tempDuration);
              var indexMin = getIndexMin(min, tempDuration);
      
              if (i < jumlahKota - 1) {
                ruteNN[i+1] = indexMin;
              }
            }
      
            return ruteNN;
          }
      
          function getMin(tempDurasi) {
            var min = Number.MAX_SAFE_INTEGER;
            for (var i = 0; i < tempDurasi.length; i++) {
              if(tempDurasi[i] < min)
                min = tempDurasi[i];
            }
            return min;
          }
          
          //untuk mencari array sepa
          function initZeros(num) {
            var arr = [];
            for (var i = 0; i < num; i++) {
              arr[i] = 0;
            }
            return arr;
          }
      
          function getOneRowDuration(route) {
            return datadurasi[route];
          }
      
          function getIndexMin(min, tempDurasi) {
            var found;
            for (var i = 0; i < tempDurasi.length; i++) {
              if(tempDurasi[i] == min){
                found = i;
                break;
              }
            }
            return found;
          }

          DataRoute.shift();
          for (let i = 0; i < DataRoute.length; i++) {
            rute.push(waypts[DataRoute[i]-1]);
          }

          console.log(rute);
          
          // getTransit(nodes[0], document.getElementById('end').value);
          var transitPanel = document.getElementById('transits-panel');
          transitPanel.innerHTML = '';          
          
          for (let i = 0; i <= rute.length; i++) {
            if (i == 0) {
              console.log(nodes[0])
              console.log(rute[0])
              // getTransit(nodes[0], rute[0])
              
              transitPanel.innerHTML += '<button id="transit'+i+'">Rute Transit ' + (i+1) +
                '</button><br>';

                document.getElementById('transit'+i).addEventListener('click', function() {
                  getTransit(nodes[0], rute[0]);
                });
            } else if (i == rute.length) {
              console.log(rute[i-1])
              console.log(document.getElementById('end').value)
              // getTransit(rute[i-1], document.getElementById('end').value)
              transitPanel.innerHTML += '<button  id="transit'+i+'">Rute Transit ' + (i+1) +
                '</button><br>';

                document.getElementById('transit'+i).addEventListener('click', function() {
                  getTransit(rute[i-1], document.getElementById('end').value);
                });
            } else {
              console.log(rute[i-1])
              console.log(rute[i])
              //getTransit(rute[i-1].location, rute[i].location)
              transitPanel.innerHTML += '<button  id="transit'+i+'">Rute Transit ' + (i+1) +
                '</button><br>';

                document.getElementById('transit'+i).addEventListener('click', function() {
                  getTransit(rute[i-1].location, rute[i].location);
                });
            }
          }
          
        });
 
        
      }
    })

    //****/
    function getTransit(asal, tujuan){
      directionsService.route({
        origin: asal,
        destination: tujuan,
        transitOptions: {
          modes: ['BUS'],
          routingPreference: 'FEWER_TRANSFERS'
        },
        travelMode: google.maps.TravelMode["TRANSIT"]

      }, function(response, status) {
        if (status === 'OK') {
          directionsDisplay.setDirections(response);
          var route = response.routes[0];
          var summaryPanel = document.getElementById('directions-panel');
          summaryPanel.innerHTML = '';
          
          // For each route, display summary information.
          for (var i = 0; i < route.legs.length; i++) {
            var routeSegment = i + 1;
            summaryPanel.innerHTML += '<b>Route Segment: ' + routeSegment +
                '</b><br>';
            summaryPanel.innerHTML += route.legs[i].start_address + ' to ';
            summaryPanel.innerHTML += route.legs[i].end_address + '<br>';
            summaryPanel.innerHTML += route.legs[i].distance.text + '<br><br>';
            summaryPanel.innerHTML += route.legs[i].duration.text + '<br><br>';
            var duration = route.legs[i].duration.text + '<br><br>';
            console.log (duration);            
          }
          var jumlahTujuan = route.legs.length;
          console.log ( route.legs.length);
          console.log(route);
        } else {
          window.alert('Directions request failed due to ' + status);
        }
        
        
      });
    }


      
    



