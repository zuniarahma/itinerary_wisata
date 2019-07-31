@extends('layouts.app') @section('script-head')
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" /> @endsection
@section('content')

<style>
    .awal {
        margin-top: 70px;
        width: 100%;
        height: auto;
        align: center;
    }

</style>

<div class="awal">
    <h2 class="col-md-6">Selamat Datang di Aplikasi Itinerary</h2>
    <div class="col-md-6">
        Aplikasi Itinerary adalah aplikasi digunakan untuk membuat rencana perjalanan wisata, memberikan
        rute yang paling optimal untuk melakukan kegiatan berwisata. Sistem aplikasi ini ditunjang dengan adanya Google
        Maps API sebagai penunjang tampilan Maps.
    </div>
</div>

<hr>

<div>
    <div class="form-group">

        <label>Start</label><br>
        <button id="by_kota" class="btn btn-info">By Kota</button>
        <button id="by_alamat" class="btn btn-info">By Alamat</button>
        <p>
            <p>
                <input class="form-control" id="my_loc" type="textbox"></input>
                <select class="kota form-control" id="start"></select>
                <input class="form-control" id="start_address" type="textbox" placeholder="Masukkan Alamat">
                <button id="start_geocode" class="button" type="button" value="Alamat">Cari</button>
    </div>
</div>

<hr>

<div>
    <img src="http://localhost/TA/itinerary/public/foto_wisata/maps.png">

</div>

@endsection
