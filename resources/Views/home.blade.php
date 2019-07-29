@extends('layouts.app') @section('script-head')
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" /> @endsection
@section('content')

<style>
    .container img {
        margin-top: 70px;
        width: 100%;
        height: auto;
    }

    .btnmap {
        position: absolute;
        transform: translate(-50%, -50%);
        margin-right: -50%;
        top: 50%;
        left: 50%;
        /* margin-left: 100px; */
        /* top: 10%; */
        /* left: 50%; */
        /* transform: translate(-50%, -50%); */
        -ms-transform: translate(-50%, -50%);
        background-color: #555;
        color: white;
        font-size: 16px;
        padding: 12px 24px;
        border: none;
        cursor: pointer;
        border-radius: 5px;
        text-align: center;
    }

    .container .btn:hover {
        background-color: black;
    }

    * {
        box-sizing: border-box;
    }

    body {
        margin: 0;
        font-family: Arial, Helvetica, sans-serif;
    }

    .header {
        text-align: center;
        padding: 32px;
    }

    .row {
        display: -ms-flexbox;
        /* IE 10 */
        display: flex;
        -ms-flex-wrap: wrap;
        /* IE 10 */
        flex-wrap: wrap;
        padding: 0 4px;
    }

    /* Create two equal columns that sits next to each other */

    .column {
        -ms-flex: 50%;
        /* IE 10 */
        flex: 50%;
        padding: 0 4px;
    }

    .column img {
        margin-top: 8px;
        vertical-align: middle;
    }

    /* Style the buttons */

    .btn {
        border: none;
        outline: none;
        padding: 10px 16px;
        background-color: #f1f1f1;
        cursor: pointer;
        font-size: 18px;
    }

    .btn:hover {
        background-color: #ddd;
    }

    .btn.active {
        background-color: #666;
        color: white;
    }

    .MyImage {
        position: relative;
        margin: 20px auto 0;
        width: 100%;
        max-width: 400px;
    }

    .theImage {
        display: block;
        position: relative;
        width: 100%;
    }

    #myButton {
        position: absolute;
        left: 0px;
        top: 0px;
    }

</style>

<div class="MyImage">
    <img class="theImage" src="{{ asset('foto_wisata/maps.png')}}" alt="Snow">
    <a href="{{ url('gmaps') }}" class="btnmap btn-danger" type="button">Itinerary</a>
</div>


<!-- Header -->
<div class="header" id="myHeader">
    <h3>Wisata Jawa Timur</h3>
</div>

<!-- Photo Grid -->
<!-- <div class="row">  -->

<div class="column">
    <div class="tampil_images" >
        <div class="nama_wisata">
        </div>
    </div>

</div>

@endsection @section('script-foot')
<script>
    var map;

    function initMap() {
        map = new google.maps.Map(document.getElementById('map'), {
            center: {
                lat: -7.280873,
                lng: 112.740428
            },
            zoom: 8
        });
    }

</script>

<script>
    // Get the elements with class="column"
    var elements = document.getElementsByClassName("column");
    // Declare a loop variable
    var i;
    // Full-width images
    function one() {
        for (i = 0; i < elements.length; i++) {
            elements[i].style.msFlex = "100%"; // IE10
            elements[i].style.flex = "100%";
        }
    }
    // Two images side by side
    function two() {
        for (i = 0; i < elements.length; i++) {
            elements[i].style.msFlex = "50%"; // IE10
            elements[i].style.flex = "50%";
        }
    }
    // Four images side by side
    // function four() {
    //     for (i = 0; i < elements.length; i++) {
    //         elements[i].style.msFlex = "25%";  // IE10
    //         elements[i].style.flex = "25%";
    //     }
    // }
    // Add active class to the current button (highlight it)
    var header = document.getElementById("myHeader");
    var btns = header.getElementsByClassName("btn");
    for (var i = 0; i < btns.length; i++) {
        btns[i].addEventListener("click", function () {
            var current = document.getElementsByClassName("active");
            current[0].className = current[0].className.replace(" active", "");
            this.className += " active";
        });
    }

</script>

<script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC9wpdoXipOnUsg4ucjOsRNFkkUPYyMK48&callback=initMap">
    < script src = "https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js" >

</script>
<script type="text/javascript" src="../resources/js/images.js"></script>
<script>
    @endsection
