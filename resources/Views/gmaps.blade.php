<!DOCTYPE html>

<html>

<head>

    <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
    <meta charset="utf-8">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/css/select2.min.css" rel="stylesheet" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

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
            <select class="kota form-control" id="start"></select>
            <input class="waktu_start form-control" type="datetime-local" name="waktu_start" />
            <br>

            {{-- <b>Waypoints:</b> <br>
            <i>(Ctrl+Click or Cmd+Click for multiple selection)</i> <br>
            <select multiple id="waypoints"></select> --}}

            <b>Tempat Wisata:</b>
            <select class="itemName form-control" name="itemName"></select>
            <button id="tambah_wisata" class="button">Add</button>
            <div class="input_fields_wrap"></div>
            <br>

            <b>End:</b>
            <select class="kota form-control" id="end"></select>
            <br>
            <input class="button" type="submit" id="submit">
        </div>

        <div>
            <br>
            <b>Lihat Rundown Wisata</b>
            <br>
            <!-- Trigger the modal with a button -->
            <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myLargeModalLabel">Rundown</button>

            <!-- Modal -->
            <div class="modal fade" id="myLargeModalLabel" role="dialog">
                <div class="modal-dialog">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">Rundown Wisata</h4>
                        </div>
                        <div class="container-fluid">
                            {{-- <div class="row">
                                <div class="col-md-6 ml-auto">.col-md-6 .ml-auto</div>
                            </div> --}}
                            <div class="row">
                                <div class="col-md-4"><b>Waktu Wisata</b></div>
                                <div class="col-md-4"><b>Tempat </div><br>
                                <div class="rundown_waktu col-md-4"></div>
                                <div class="rundown_nama_wisata col-md-4"></div>
                            </div>
                            {{-- <div class="row">
                                <div class="col-md-3 ml-auto">.col-md-3 .ml-auto</div>
                                <div class="col-md-2 ml-auto">.col-md-2 .ml-auto</div>
                            </div> --}}
                            <div class="modal-body">
                                {{-- <p>Some text in the modal.</p> --}}
                               
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <h3>Transit</h3>
        <div id="transits-panel"></div>
        <h3>Detail Informasi</h3>
        <div id="directions-panel"></div>
    </div>
    <script type="text/javascript"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script async defer
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC9wpdoXipOnUsg4ucjOsRNFkkUPYyMK48&callback=initMap">
    </script>
    <script type="text/javascript" src="../resources/js/waypoints_v2.js"></script>
    <script type="text/javascript" src="../resources/js/waktu_tempuh.js"></script>
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
                                    id: item.latitude + "," + item.longitude
                                }
                            })
                        };
                    },
                    cache: true
                }
            });
        });

        $(document).ready(function () {
            var max_fields = 9; //maximum input boxes allowed
            var wrapper = $(".input_fields_wrap"); //Fields wrapper
            var add_button = $("#tambah_wisata"); //Add button ID

            var x = 1; //initlal text box count
            $(add_button).click(function (e) { //on add input button click
                e.preventDefault();
                if (x < max_fields) { //max input box allowed
                    x++; //text box increment
                    var nama_wisata = $('.itemName :selected').text();
                    var latlng = $('.itemName :selected').val();
                    $(wrapper).append(
                        '<div><input class="select_wisata form-control" type="text" name="daftar_wisata[]" value="' +
                        latlng +
                        '"><input class="nama_wisata form-control" type="text" value="' +
                        nama_wisata +
                        '"> Waktu Transit:<input class="waktu_wisata form-control" type="time" name="waktu_wisata[]"></input><a href="#" class="remove_field">Remove</a></div><br>'
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
