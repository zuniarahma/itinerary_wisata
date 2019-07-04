@extends('layouts.app')

@section('script-head')

@endsection
@section('content')

<div class="panel">
    <div id="map" style="height:600px; margin-top: 50px"></div>
    <a href="{{ url('gmaps') }}" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
</div>
@endsection
@section('script-foot')
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
    <script async defer
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC9wpdoXipOnUsg4ucjOsRNFkkUPYyMK48&callback=initMap">
    </script>
@endsection