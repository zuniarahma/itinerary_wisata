<!DOCTYPE html>

<html>

<head>

    <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
    <meta charset="utf-8">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/css/select2.min.css" rel="stylesheet" />
    <title>Waypoints in Directions</title>
    <style>
        #right-panel {
            font-family: 'Roboto', 'sans-serif';
            line-height: 30px;
            padding-left: 10px;
        }

        #right-panel select,
        #right-panel input {
            font-size: 15px;
        }

        #right-panel select {
            width: 100%;
        }

        #right-panel i {
            font-size: 12px;
        }

        html,
        body {
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

        #transits-panel {
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
            font-family: 'Roboto', 'sans-serif';
            line-height: 30px;
            padding-left: 10px;
        }

        #button {
            margin-top: 10px;
            margin-right: 9px;
            position: right;
            top: 10px;
            left: 25%;
            z-index: 5;
            background-color: #fff;
            padding: 5px;
            border: 1px solid #999;
            text-align: center;
            font-family: 'Roboto', 'sans-serif';
            line-height: 30px;
            padding-left: 10px;
            font-size: 13.5px;
        }

        .button {
            background-color: #4CAF50;
            border: none;
            color: white;
            padding: 7px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 14px;
            margin: 2px 2px;
            border-radius: 4px;
            width: 50pt;
        }

    </style>
</head>

<body>

    <div id="floating-panel">
        <b>Mode of Travel: </b>
        <select id="mode">
            <option value="DRIVING">Kendaraan Pribadi</option>
            <option value="TRANSIT">Kendaraan Umum</option>

        </select>
    </div>

    <button id="button">My Location</button>

    <div id="map"></div>
    <div id="right-panel">
        <div>
            <b>Start:</b>
            <select class="kota form-control" id="start">
                <option value="Surabaya">Surabaya, ID</option>
                <option value="Lamongan, ID">Lamongan, ID</option>
                <option value="Gresik">Gresik</option>
                <option value="Bojonegoro, ID">Bojonegoro, ID</option>
            </select>

            <input class="form-control" type="time" name="waktu_start" ></input>
            <br>

            {{-- <b>Waypoints:</b> <br>
            <i>(Ctrl+Click or Cmd+Click for multiple selection)</i> <br>
            <select multiple id="waypoints"></select> --}}

            <select class="itemName form-control" name="itemName"></select>
            <button id="tambah_wisata" class="button">Add</button>
            <div class="input_fields_wrap"></div>
            <br>
            
            <b>End:</b>
            <select class="kota form-control" id="end">
                <option value="Probolinggo">Probolinggo, ID</option>
                <option value="Pacitan, ID">Pacitan, ID</option>
                <option value="Banyuwangi, ID">Banyuwangi, ID</option>
                <option value="Malang, ID">Malang, ID</option>
                <option value="Surabaya,ID">Surabaya, ID</option>
            </select>
            <br>
            <input class="button" type="submit" id="submit">
        </div>
        <h3>Transit</h3>
        <div id="transits-panel"></div>
        <h3>Detail Informasi</h3>
        <div id="directions-panel"></div>
    </div>
    <script type="text/javascript"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    {{-- <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC9wpdoXipOnUsg4ucjOsRNFkkUPYyMK48&callback=initMap" async defer></script> --}}

    <script async defer
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC9wpdoXipOnUsg4ucjOsRNFkkUPYyMK48&callback=initMap">
    </script>
    <script type="text/javascript" src="../resources/js/waypoints_v2.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.js"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/js/select2.min.js"></script>
    <script type="text/javascript">
        
        $('.itemName').each(function () {
            console.log($(this));
            $(this).select2({
                placeholder: 'Pilih tempat wisata',
                ajax: {
                    url: 'api/searchwisata',
                    dataType: 'json',
                    delay: 250,
                    processResults: function (data) {
                        return {
                            results: $.map(data, function (item) {
                                return {
                                    text: item.nama_wisata,
                                    id: item.id_wisata
                                }
                            })
                        };
                    },
                    cache: true
                }
            });
        });

        $(document).ready(function () {
            var max_fields = 10; //maximum input boxes allowed
            var wrapper = $(".input_fields_wrap"); //Fields wrapper
            var add_button = $("#tambah_wisata"); //Add button ID

            var x = 1; //initlal text box count
            $(add_button).click(function (e) { //on add input button click
                e.preventDefault();
                if (x < max_fields) { //max input box allowed
                    x++; //text box increment
                    var nama_wisata = $('.itemName :selected').text();
                    $(wrapper).append(
                        // '<div><input type="text" name="mytext[]"/><a href="#" class="remove_field">Remove</a></div>'
                        // '<div><select class="itemName form-control" name="itemName[]"></select><a href="#" class="remove_field">Remove</a></div>'
                        '<div><input class="select_wisata" type="text" name="daftar_wisata[]" value="' + nama_wisata + '"> <input class="form-control" type="time" name="waktu_wisata" ></input><a href="#" class="remove_field">Remove</a></div>'
                    ); //add input box
                }
            });

            $(wrapper).on("click", ".remove_field", function (e) { //user click on remove text
                e.preventDefault();
                $(this).parent('div').remove();
                x--;
            })
        });

    </script>

</body>

</html>
