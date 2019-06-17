var nodes = [];
var durations = [];
var directionsService;
var directionsDisplay;
var asal;
var tujuan;
var a;
var b;
var selectedMode = document.getElementById('mode').value;
var rute = [];

//Jalankan Ambil data ketika web sudah ready
$(document).ready(function () {
    $.ajax("api/wisata")
        .done(function (data) {
            console.log("success");
            console.log(data);
            var selector = $('#waypoints');
            selector.find('option').remove();
            $.each(data, function (key, value) {
                //selector.append("<option value='" + value.nama_wisata + "'>" + value.nama_wisata + "</option>");
                selector.append("<option value='" + value.latitude + "," + value.longitude + "'>" + value.nama_wisata + "</option>");

                console.log('key', key);
                console.log('value', value.nama_wisata);
            });
        })
        .fail(function () {
            console.log("error");
        })
        .always(function () {
            console.log("complete");
        });

    $.ajax("api/kota")
        .done(function (data) {
            console.log("success");
            console.log(data);
            var selector = $('.kota');
            selector.find('option').remove();
            $.each(data, function (key, value) {
                //selector.append("<option value='" + value.nama_wisata + "'>" + value.nama_wisata + "</option>");
                selector.append("<option value='" + value.nama_kota + "'>" + value.nama_kota + "</option>");

                console.log('key', key);
                console.log('value', value.nama_kota);
            });
        })
        .fail(function () {
            console.log("error");
        })
        .always(function () {
            console.log("complete");
        });
});

function initMap() {
    directionsService = new google.maps.DirectionsService;
    directionsDisplay = new google.maps.DirectionsRenderer;
    var map = new google.maps.Map(document.getElementById('map'), {
        zoom: 8.5,
        center: {
            lat: -7.280873,
            lng: 112.740428
        }
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

        google.maps.event.addDomListener(myLocationBtn, 'click', function () {

            navigator.geolocation.getCurrentPosition(function (success) {
                map.setCenter(new google.maps.LatLng(success.coords.latitude, success.coords.longitude));
                map.setZoom(12);
                posisiawal = new google.maps.LatLng(success.coords.latitude, success.coords.longitude);
                nodes.push(posisiawal);

                new google.maps.Marker({
                    position: new google.maps.LatLng(success.coords.latitude, success.coords.longitude),
                    map: map
                });
            });
        });
    }
}

// Get all durations depending on travel type
function getDurations(callback) {

    var service = new google.maps.DistanceMatrixService();
    //var selectedMode = document.getElementById('mode').value;
    service.getDistanceMatrix({
        origins: nodes,
        destinations: nodes,
        travelMode: google.maps.TravelMode["DRIVING"]
        // travelMode: google.maps.TravelMode[selectedMode]
        //travelMode: google.maps.TravelMode[$('#travel-type').val()],
        //avoidHighways: parseInt($('#avoid-highways').val()) > 0 ? true : false,
        //avoidTolls: false,
    }, function (distanceData) {
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
$(document).ready(function () {
    document.getElementById('submit').addEventListener('click', function () {
        a = nodes[0];
        b = document.getElementById('end').value;
        if (selectedMode == "TRANSIT") {
            // getTransit(a, b);
            calculateAndDisplayRoute(directionsService, directionsDisplay);
            console.log("TRANSIT");
        } else {
            //getDriving(a, b);
            console.log("DRIVING");
            calculateAndDisplayRoute(directionsService, directionsDisplay);
        }
    });

    document.getElementById('mode').addEventListener('change', function () {
        selectedMode = document.getElementById('mode').value;
        console.log("SELECTED MODE: " + selectedMode);
        // calculateAndDisplayRoute(directionsService, directionsDisplay);
    });

    function calculateAndDisplayRoute(directionsService, directionsDisplay) {
        var waypts = [];
        var checkboxArray = document.getElementById('waypoints');

        // Select Waypoints
        // for (var i = 0; i < checkboxArray.length; i++) {
        //     if (checkboxArray.options[i].selected) {
        //         waypts.push({
        //             location: checkboxArray[i].value,
        //             stopover: true
        //         });
        //         nodes.push(checkboxArray[i].value);
        //     }
        // }
        $('.select_wisata').each(function () {
            console.log($(this).val());
            waypts.push({
                location: $(this).val(),
                stopover: true
            });
            nodes.push($(this).val());
        });
        console.log(waypts);     

        //Nearest Neighbour Algorithm
        getDurations(function () {
            var datadurasi = durations;

            console.log("DATA DURASI.LENGTH: " + datadurasi.length);
            var DataRoute = getRute(0, datadurasi.length);
            console.log("DATA ROUTE: " + DataRoute);

            function getRute(myLocIndex, jumlahKota) {
                var ruteNN = initZeros(jumlahKota);
                ruteNN[0] = myLocIndex;

                for (let i = 0; i < ruteNN.length; i++) {
                    var tempDuration = getOneRowDuration(ruteNN[i]);

                    for (let j = 0; j < tempDuration.length; j++) {
                        var indexSudahAdaDiRute = false;
                        for (const route of ruteNN) {
                            if (j == route)
                                indexSudahAdaDiRute = true;
                        }

                        if (tempDuration[j] == 0 || indexSudahAdaDiRute == true) {
                            tempDuration[j] = Number.MAX_SAFE_INTEGER
                        }
                    }

                    var min = getMin(tempDuration);
                    var indexMin = getIndexMin(min, tempDuration);

                    if (i < jumlahKota - 1) {
                        ruteNN[i + 1] = indexMin;
                    }
                }

                return ruteNN;
            }

            function getMin(tempDurasi) {
                var min = Number.MAX_SAFE_INTEGER;
                for (var i = 0; i < tempDurasi.length; i++) {
                    if (tempDurasi[i] < min)
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
                    if (tempDurasi[i] == min) {
                        found = i;
                        break;
                    }
                }
                return found;
            }

            DataRoute.shift();
            for (let i = 0; i < DataRoute.length; i++) {
                rute.push(waypts[DataRoute[i] - 1]);
            }

            console.log("RUTE: " + rute);

            if (selectedMode == "TRANSIT") {
                TransitCondition();
                //console.log("TRANSIT");
            } else {
                getDriving(a, b)
            }

        });
    }

    // Transit Panel
    var transitPanel = document.getElementById('transits-panel');
    transitPanel.innerHTML = '';
    console.log("RUTE: " + rute)

    function TransitCondition() {
        for (let i = 0; i <= rute.length; i++) {

            //rute Start to End
            if (i == 0 && rute.length == 0) {
                console.log("RUTE DARI " + nodes[0] + "KE " + document.getElementById('end').value)
                transitPanel.innerHTML += '<button  id="transit' + i + '">Rute Transit ' + (i + 1) +
                    '</button><br>';
                $(document).on('click', '#transit' + i, function () {
                    //getTransit(nodes[0], document.getElementById('end').value);
                    getTransit(document.getElementById('start').value, document.getElementById('end').value);
                });
            }

            //rute Start
            else if (i == 0) {
                console.log("RUTE DARI " + nodes[0] + "KE " + rute[0])
                // getTransit(nodes[0], rute[0])            
                transitPanel.innerHTML += '<button id="transit' + i + '">Rute Transit ' + (i + 1) +
                    '</button><br>';
                $(document).on('click', '#transit' + i, function () {
                    //getTransit(nodes[0], rute[0].location);
                    getTransit(document.getElementById('start').value, rute[0].location);
                });
            }

            //rute End
            else if (i == rute.length) {
                console.log("RUTE DARI " + rute[i - 1] + "KE " + document.getElementById('end').value)
                transitPanel.innerHTML += '<button  id="transit' + i + '">Rute Transit ' + (i + 1) +
                    '</button><br>';
                $(document).on('click', '#transit' + i, function () {
                    getTransit(rute[i - 1].location, document.getElementById('end').value);
                });
            }

            //rute Waypoints
            else {
                console.log("RUTE DARI " + rute[i - 1].location + "KE " + rute[i].location)
                transitPanel.innerHTML += '<button  id="transit' + i + '">Rute Transit ' + (i + 1) +
                    '</button><br>';
                $(document).on('click', '#transit' + i, function () {
                    getTransit(rute[i - 1].location, rute[i].location);
                });
            }
        }
    }
})

//fungsi get Transit
function getTransit(asal, tujuan) {
    console.log("asal: " + asal)
    directionsService.route({
        origin: asal,
        destination: tujuan,
        transitOptions: {
            modes: ['BUS'],
            routingPreference: 'FEWER_TRANSFERS'
        },
        travelMode: google.maps.TravelMode["TRANSIT"]

    }, function (response, status) {
        if (status === 'OK') {
            directionsDisplay.setDirections(response);
            var route = response.routes[0];
            var summaryPanel = document.getElementById('directions-panel');
            summaryPanel.innerHTML = '';

            // Informasi Detail jalan
            for (var i = 0; i < route.legs.length; i++) {
                var routeSegment = i + 1;
                summaryPanel.innerHTML += '<b>Route Segment: ' + routeSegment +
                    '</b><br>';
                summaryPanel.innerHTML += route.legs[i].start_address + ' to ';
                summaryPanel.innerHTML += route.legs[i].end_address + '<br>';
                summaryPanel.innerHTML += route.legs[i].distance.text + '<br><br>';
                summaryPanel.innerHTML += route.legs[i].duration.text + '<br><br>';
                var duration = route.legs[i].duration.text + '<br><br>';
                console.log("DURATION " + duration);
            }
            var jumlahTujuan = route.legs.length;
            console.log("JUMLAH TUJUAN: " + route.legs.length);
            console.log("ROUTE: " + route);
        } else {
            window.alert(status + '\n Oops! Data Kendaraan umum belum tersedia');
        }
    });
}

// Fungsi Get Driving    
function getDriving(asal, tujuan) {
    console.log(": " + asal)
    directionsService.route({
        origin: asal,
        destination: tujuan,
        waypoints: rute,
        optimizeWaypoints: true,
        travelMode: google.maps.TravelMode["DRIVING"]

    }, function (response, status) {
        if (status === 'OK') {
            directionsDisplay.setDirections(response);
            var route = response.routes[0];
            var summaryPanel = document.getElementById('directions-panel');
            summaryPanel.innerHTML = '';

            // Informasi Detail jalan
            for (var i = 0; i < route.legs.length; i++) {
                var routeSegment = i + 1;
                summaryPanel.innerHTML += '<b>Route Segment: ' + routeSegment +
                    '</b><br>';
                summaryPanel.innerHTML += route.legs[i].start_address + ' to ';
                summaryPanel.innerHTML += route.legs[i].end_address + '<br>';
                summaryPanel.innerHTML += route.legs[i].distance.text + '<br><br>';
                summaryPanel.innerHTML += route.legs[i].duration.text + '<br><br>';
                var duration = route.legs[i].duration.text + '<br><br>';
                console.log("duration: " + duration);
            }
            var jumlahTujuan = route.legs.length;
            console.log("JUMLAH TUJUAN: " + route.legs.length);
            console.log("ROUTE: " + route);
        } else {
            window.alert(status + +'\n Oops! Maaf ada kesalahan');
        }
    });
}
