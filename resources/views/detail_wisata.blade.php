@extends('layouts.app') @section('script-head')
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" /> @endsection
@section('content')

<!-- Header -->
<div class="header" id="myHeader">
    <h3> Detail Wisata Jawa Timur</h3>
</div>

<div class="column">
    <div>
        <!-- <img src="data_file/{{ $wisata->file }}" class="col-xs-12 col-sm-12 col-md-12 col-lg-12"> -->
        <img src="{{ asset('data_file') }}/{{ $wisata->file }}  " class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
    </div>

    <hr>

    <div>
        <h3 class="nama_wisata"> {{ $wisata->nama_wisata }}</h3>
    </div>
    <hr>
    <div>
        <label>Keterangan</label>
        <textarea class="keterangan form-control" rows="10"> {{ $wisata->keterangan }} </textarea>
    </div>

    <div>
        <label>Fasilitas</label>
        <textarea class="fasilitas form-control" rows="5"> {{ $wisata->fasilitas }} </textarea>
    </div>

    <div>
        <label>Alamat</label>
        <textarea  class="alamat form-control" rows="2"> {{ $wisata->alamat }} </textarea>
    </div>

    <div>
        <label>Harga</label>
        <input class="harga form-control" rows="5" value="{{ $wisata->harga }}"/> 
    </div>

    <div>
        <label>Jam Buka</label>
        <input class="jam_buka form-control" type="text" value="{{ $wisata->jam_buka }}"/>
    </div>

    <div>
        <label>Jam Tutup</label>
        <input class="jam_tutup form-control" type="text" value="{{ $wisata->jam_tutup }}"/>
    </div>

</div>

@endsection @section('script-foot')
