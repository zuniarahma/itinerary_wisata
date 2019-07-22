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
var waypoints_waktu = [];
var perjalanan_waktu = [];
var total_perjalanan;
var waktu_start;
var docReady = false;
var geocode_end;
var geocode_start;
var id_user;
var alamat;
var my_loc;

//Jalankan Ambil data ketika web sudah ready
$(document).ready(function () {
    docReady = true;
    $.ajax("api/wisata")
        .done(function (data) {
            // console.log("success");
            // console.log(data);
            var selector = $('.itemName');
            selector.find('option').remove();
            $.each(data, function (key, value) {
                //selector.append("<option value='" + value.nama_wisata + "'>" + value.nama_wisata + "</option>");
                selector.append("<option value='" + value.latitude + "," + value.longitude + "'>" + value.nama_wisata + "</option>");

                // console.log('key', key);
                // console.log('value', value.nama_wisata);
            });
        })
        .fail(function () {
            // console.log("error");
        })
        .always(function () {
            // console.log("complete");
        });

    requestKota('.kota');
});

function requestKota(selectorStr) {
    $.ajax("api/kota")
        .done(function (data) {
            // console.log("success");
            // console.log(data);
            var selector = $(selectorStr);
            selector.find('option').remove();
            selector.append("<option value=0>Pilih Kota</option>");
            $.each(data, function (key, value) {
                //selector.append("<option value='" + value.nama_wisata + "'>" + value.nama_wisata + "</option>");
                selector.append("<option value='" + value.nama_kota + "'>" + value.nama_kota + "</option>");

                // console.log('key', key);
                // console.log('value', value.nama_kota);
            });
            selector.append("<option value=39>Lainnya</option>");
        })
        .fail(function () {
            // console.log("error");
        })
        .always(function () {
            // console.log("complete");
        });
}

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
        myLocationDiv.appendChild(myLocationBtn);

        google.maps.event.addDomListener(myLocationBtn, 'click', function () {
            // console.log("myLocationBtn");
            navigator.geolocation.getCurrentPosition(function (success) {
                map.setCenter(new google.maps.LatLng(success.coords.latitude, success.coords.longitude));
                map.setZoom(12);
                posisiawal = new google.maps.LatLng(success.coords.latitude, success.coords.longitude);
                nodes.push(posisiawal);

                console.log("posisi awal", posisiawal);

                new google.maps.Marker({
                    position: new google.maps.LatLng(success.coords.latitude, success.coords.longitude),
                    map: map
                });
            });

        });
    }

    var geocoder = new google.maps.Geocoder();

    document.getElementById('end').addEventListener('click', function () {
        geocodeEndAddress(geocoder, map);
    });

    document.getElementById('start_geocode').addEventListener('click', function () {
        geocodeStartAddress(geocoder, map);
    });
}

function geocodeStartAddress(geocoder, resultsMap) {

    // Geocode for START Address
    var start_address = document.getElementById('start_address').value;
    geocoder.geocode({
        'address': start_address
    }, function (results, status) {
        if (status === 'OK') {
            resultsMap.setCenter(results[0].geometry.location);
            var marker = new google.maps.Marker({
                map: resultsMap,
                position: results[0].geometry.location
            });

            var alamat = results[0].formatted_address;

            document.getElementById("start_address").value = alamat;
            console.log("alamat", alamat);

            // console.log("ini result", results);
            // console.log(results[0].geometry.location);

            geocode_start = results[0].geometry.location;
        } else {
            alert('Geocode was not successful for the following reason: ' + status);
        }
    });
}

function geocodeEndAddress(geocoder, resultsMap) {

    // Geocode for END Address
    var end_address = document.getElementById('end_address').value;
    geocoder.geocode({
        'address': end_address
    }, function (results, status) {
        if (status === 'OK') {
            resultsMap.setCenter(results[0].geometry.location);
            var marker = new google.maps.Marker({
                map: resultsMap,
                position: results[0].geometry.location
            });

            alamat = results[0].formatted_address;
            // console.log("ini result", results[0].formatted_address);

            document.getElementById("end_address").value = alamat;
            console.log("alamat", alamat);

            // console.log(results[0].geometry.location);
            geocode_end = results[0].geometry.location;

        } else {
            alert('Geocode was not successful for the following reason: ' + status);
        }
    });
    // document.getElementById('end').value = alamat;
    // console.log("document.getElementById('end').value ", document.getElementById('end').value);
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

    $("#transit").toggle();
    $("#detail_info").toggle();
    $("#rute").toggle();
    $("#my_loc").toggle();

    $("#start").hide();
    $("#start_address").hide();
    $("#start_geocode").hide();

    document.getElementById('by_kota').addEventListener('click', function () {
        $("#start").show();
    });

    document.getElementById('by_alamat').addEventListener('click', function () {
        $("#start_address").show();
        $("#start_geocode").show();
    });

    document.getElementById('mode').addEventListener('change', function () {
        selectedMode = document.getElementById('mode').value;
        // console.log("SELECTED MODE: " + selectedMode);
        // calculateAndDisplayRoute(directionsService, directionsDisplay);
    });

    submitForm = function (id) {
        id_user = id;

        //pilihan Start
        if (nodes.length != 0) {
            a = nodes[0];
            // console.log("gunakan my location");
            // console.log(a);
            console.log(a);
        } else if ($('.kota :selected').val() == 0) {
            a = geocode_start;
            nodes.push(a);
            // console.log("gunakan geocode start");
            // console.log(a);
        } else {
            // console.log("gunakan kota");
            // a = new google.maps.LatLng(-7.8711591, 112.5246605)
            a = $('.kota :selected').val();
            nodes.push(a);
            // console.log(a);
        }

        // b = document.getElementById('end').value;
        b = geocode_end;


        // Pilih Mode Transpoortasi
        if (selectedMode == "TRANSIT") {
            // getTransit(a, b);
            $("#transit").toggle();
            $("#detail_info").toggle();
            $("#rute").toggle();
            $("#my_loc").toggle();

            calculateAndDisplayRoute(directionsService, directionsDisplay);
            // console.log("TRANSIT");


        } else {
            //getDriving(a, b);
            // console.log("DRIVING");

            $("#detail_info").toggle();
            $("#rute").toggle();
            $("#my_loc").toggle();

            calculateAndDisplayRoute(directionsService, directionsDisplay);
        }
    }

    function calculateAndDisplayRoute(directionsService, directionsDisplay) {
        var waypts = [];

        $('.select_wisata').each(function () {
            var latlng = $(this).val().split(",");
            // console.log("LATLNG");
            // console.log(latlng[0]);

            waypts.push({
                // location: $(this).val(),
                location: new google.maps.LatLng(latlng[0], latlng[1]),
                stopover: true
            });
            nodes.push($(this).val());
        });
        // console.log("ini waypoints");
        // console.log(waypts);

        //Nearest Neighbour Algorithm
        getDurations(function () {
            var datadurasi = durations;

            // console.log("DATA DURASI.LENGTH: ", datadurasi.length);
            var DataRoute = getRute(0, datadurasi.length);
            // console.log("DATA ROUTE: " + DataRoute);

            function getRute(myLocIndex, jumlahKota) {
                var ruteNN = initZeros(jumlahKota);
                ruteNN[0] = myLocIndex;

                // console.log('ruteNN');
                // console.log(ruteNN);

                for (let i = 0; i < ruteNN.length; i++) {
                    var tempDuration = getOneRowDuration(ruteNN[i]);
                    // console.log('temp duration');
                    // console.log(tempDuration);

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

            // console.log("RUTE: ", rute);

            if (selectedMode == "TRANSIT") {
                TransitCondition();
                // console.log("TRANSIT");
            } else {
                getDriving(a, b)
            }
        });
    }

    // Transit Panel
    var transitPanel = document.getElementById('transits-panel');
    transitPanel.innerHTML = '';
    // console.log("RUTE: " + rute)

    function TransitCondition() {

        a = nodes[0];

        for (let i = 0; i <= rute.length; i++) {
            // console.log("rute.length:", rute.length);

            //rute Start to End
            if (i == 0 && rute.length == 0) {
                // console.log("RUTE DARI ", nodes[0], "KE ", geocode_end)
                transitPanel.innerHTML += '<button type="submit" class="btn btn-primary"  id="transit' + i + '">Rute Transit ' + (i + 1) +
                    '</button><br><p>';
                $(document).on('click', '#transit' + i, function () {
                    getTransit(a, geocode_end);
                    // getTransit(document.getElementById('start').value, geocode_end);
                });
                // console.log("nodes[0]", nodes[0]);
            }

            //rute Start to waypoints [0]
            else if (i == 0) {
                // console.log("RUTE DARI ", nodes[0], "KE " + rute[0])
                // getTransit(nodes[0], rute[0])            
                transitPanel.innerHTML += '<button type="submit" class="btn btn-primary" id="transit' + i + '">Rute Transit ' + (i + 1) +
                    '</button><br><p>';
                $(document).on('click', '#transit' + i, function () {
                    //getTransit(nodes[0], rute[0].location);
                    // getTransit(document.getElementById('start').value, rute[0].location);
                    getTransit(a, rute[0].location);
                });
                // console.log("rute[0]");
                // console.log(rute[0]);
                // console.log("nodes[0]", nodes[0]);
            }

            //rute waypoints[terakhir] ke End
            else if (i == rute.length) {
                // console.log("RUTE DARI ", rute[i - 1], "KE ", geocode_end)
                transitPanel.innerHTML += '<button type="submit" class="btn btn-primary" id="transit' + i + '">Rute Transit ' + (i + 1) +
                    '</button><br><p>';
                $(document).on('click', '#transit' + i, function () {
                    getTransit(rute[i - 1].location, geocode_end);
                });
            }

            //rute Waypoints
            else {
                // console.log("RUTE DARI ", rute[i - 1].location, "KE ", rute[i].location)
                transitPanel.innerHTML += '<button type="submit" class="btn btn-primary" id="transit' + i + '">Rute Transit ' + (i + 1) +
                    '</button><br><p>';
                $(document).on('click', '#transit' + i, function () {
                    getTransit(rute[i - 1].location, rute[i].location);
                });
            }
        }
    }
})

//fungsi get Transit
function getTransit(asal, tujuan) {
    // console.log("asal: " + asal)
    directionsService.route({
        origin: asal,
        destination: tujuan,
        transitOptions: {
            routingPreference: 'LESS_WALKING'
        },
        travelMode: google.maps.TravelMode["TRANSIT"]

    }, function (response, status) {
        if (status === 'OK') {
            directionsDisplay.setDirections(response);
            var total_duration = 0;
            var route = response.routes[0];
            var summaryPanel = document.getElementById('directions-panel');
            summaryPanel.innerHTML = '';

            // Informasi Detail jalan
            for (var i = 0; i < route.legs.length; i++) {
                var routeSegment = i + 1;
                summaryPanel.innerHTML += '<b>Rute ' + routeSegment +
                    ' :<br> <b>Dari ';
                summaryPanel.innerHTML += route.legs[i].start_address + '<br> <b> Ke ';
                summaryPanel.innerHTML += route.legs[i].end_address + '<br> <b>Jarak ';
                summaryPanel.innerHTML += route.legs[i].distance.text + '<br> <b>Durasi Perjalanan ';
                summaryPanel.innerHTML += route.legs[i].duration.text + '<br>' + '<br>';
                var duration = route.legs[i].duration.text;

                // console.log("DURATION " + duration);

                // console.log(Math.round(route.legs[i].duration.value / 60));

                var duration_minutes = Math.round(route.legs[i].duration.value / 60);
                total_duration = total_duration + duration_minutes; //menjumlah durasi
                // console.log(total_duration)

                perjalanan_waktu.push(duration_minutes);

                my_loc = route.legs[0].start_address;
                console.log("my_loc", my_loc);
            }

            document.getElementById("my_loc").value = my_loc;
            console.log("my_loc", my_loc);

            // console.log("duration_minutes", perjalanan_waktu);
            getCountDuration(total_duration);

            var jumlahTujuan = route.legs.length;
            // console.log("JUMLAH TUJUAN: " + route.legs.length);
            // console.log("ROUTE: ", route);
            // tampilkan rute satu satu
            displayRoute(route);

            // simpan waktu perjalanan
            save_history();

            // var modal_wisata = document.getElementById('transits-panel');
        } else {
            window.alert(status + '\n Oops! Data Kendaraan umum belum tersedia');
        }
    });
}

function displayRoute(route) {
    // console.log("STEP PER STEP");
    var selector = $('.rute');
    $(selector).append('<ul>');

    route.legs.forEach(legs => {
        legs.steps.forEach(step => {
            // console.log(step.instructions);
            var rute_panel = $(selector).append('<li>' + step.instructions + '</li>');
            rute_panel.innerHTML = '';
        });
    });
    $(selector).append('</ul>');
}

// Fungsi Get Driving    
function getDriving(asal, tujuan) {
    // console.log("get driving");
    // console.log(rute);
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
            var total_duration = 0;
            summaryPanel.innerHTML = '';

            // Informasi Detail jalan
            for (var i = 0; i < route.legs.length; i++) {
                var routeSegment = i + 1;

                summaryPanel.innerHTML += '<b>Rute ' + routeSegment +
                    ' :<br> <b>Dari ';
                summaryPanel.innerHTML += route.legs[i].start_address + '<br> <b> Ke ';
                summaryPanel.innerHTML += route.legs[i].end_address + '<br> <b>Jarak ';
                summaryPanel.innerHTML += route.legs[i].distance.text + '<br> <b>Durasi Perjalanan ';
                summaryPanel.innerHTML += route.legs[i].duration.text + '<br>' + '<br>';
                var duration = route.legs[i].duration.text;
                // console.log(Math.round(route.legs[i].duration.value / 60));

                var duration_minutes = Math.round(route.legs[i].duration.value / 60);
                total_duration = total_duration + duration_minutes; //menjumlah durasi
                // console.log(total_duration)

                perjalanan_waktu.push(duration_minutes);

                my_loc = route.legs[0].start_address;
                console.log("my_loc", my_loc);
            }

            document.getElementById("my_loc").value = my_loc;
            console.log("my_loc", my_loc);

            // console.log("duration_minutes", perjalanan_waktu);
            getCountDuration(total_duration);

            var jumlahTujuan = route.legs.length;
            // console.log("JUMLAH TUJUAN: " + route.legs.length);
            // console.log("ROUTE: ", route);
            displayRoute(route);

            // simpan waktu perjalanan
            save_history();

            var modal_wisata = document.getElementById('transits-panel');
        } else {
            window.alert(status + +'\n Oops! Maaf ada kesalahan');
        }
    });
}

//hitung waktu
function getCountDuration(total_duration) {
    var total_start = 0;
    var total_wisata = 0;

    //waktu start
    waktu_start = new Date($('.waktu_start').val());
    // console.log(waktu_start);

    //waktu wisata
    $('.waktu_wisata').each(function () {

        var time = $(this).val();
        var time_split = time.split(':');

        var time_minutes = Number(time_split[0] * 60) + Number(time_split[1]); // jadikan menit
        total_wisata = total_wisata + time_minutes; //menjumlah waktu waypoints
        // console.log($(this).val());
        // console.log(time_split);
        // console.log(time_minutes);
        // console.log(total_wisata);

        waypoints_waktu.push(time_minutes);
    });

    // console.log("waypoints_waktu", waypoints_waktu);

    //total waktu perjalanan waypoints
    total_perjalanan = total_start + total_duration + total_wisata;
    // console.log("total waktu perjalanan", total_perjalanan, "menit");

    //total waktu keseluruhan
    // waktu_start.setMinutes(waktu_start.getMinutes() + total_perjalanan);
    // new Date(waktu_start);
    // console.log("jam sampai", waktu_start);

}

function save_waktu_tempuh(id_history) {

    var history_start;

    // reverse geocode and process all
    var geocoder = new google.maps.Geocoder;
    geocoder.geocode({
        'location': a
    }, function (results, status) {
        if (status === 'OK') {
            if (results[0]) {
                history_start = results[0].formatted_address;

                var history_waypoints = [];
                history_waypoints.push(history_start);

                for (var i = 0; i < rute.length; i++) {
                    history_waypoints.push("(" + rute[i].location.lat() + ", " + rute[i].location.lng() + ")");
                }

                // var history_end = $('#end').val();
                var history_end = alamat;
                // console.log("history END", history_end);

                history_waypoints.push(history_end);

                console.log("history_waypoints:", history_waypoints);
                // console.log("history_end", history_end);

                var history_all = [];

                for (var i = 0; i < history_waypoints.length - 1; i++) {

                    var data = {
                        waypoints_waktu: waypoints_waktu[i],
                        perjalanan_waktu: perjalanan_waktu[i],
                        history_all_start: history_waypoints[i],
                        history_all_end: history_waypoints[i + 1],
                        id_history: id_history
                    };
                    console.log("DATA", data);

                    $.ajax({
                        type: "POST",
                        url: "api/waktu_tempuh",
                        data: data,
                        async: false,
                        success: function (data) {
                            // console.log("sukses waktu_tempuh");
                        }

                    });

                    // history_all.push([history_waypoints[i], history_waypoints[i + 1]]);
                }
                // console.log("history_all :", history_all);
            } else {
                alert('No results found')
            }
        } else {
            alert('Geocoder failed due to: ' + status);
        }
    });

}

function geocodeLatLng() {
    var geocoder = new google.maps.Geocoder;
    geocoder.geocode({
        'location': a
    }, function (results, status) {
        if (status === 'OK') {
            if (results[0]) {
                infowindow.setContent(results[0].formatted_address);

            } else {
                alert('No results found')
            }
        } else {
            alert('Geocoder failed due to: ' + status);
        }
    });
}

function save_history() {
    var total_perjalanan_waktu = total_perjalanan;
    var time_start = waktu_start;

    var data = {
        total_perjalanan_waktu: total_perjalanan_waktu,
        id_user: id_user,
        time_start: time_start.getFullYear() + '-' + (time_start.getMonth() + 1) + '-' + time_start.getDate() + ' ' + time_start.getHours() + ':' + time_start.getMinutes()
    };

    // console.log("Ini data");
    // console.log(data);

    $.ajax({
        type: "POST",
        url: "api/history",
        data: data,
        success: function (data) {
            save_waktu_tempuh(data);
            // console.log("sukses history");
        }
    });
}
