<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use DB;
use App\Http\Requests;
use App\Http\Controllers\Controller;

class WisataInsertController extends Controller {
    public function insertform(){
        return view('wisata_create');
    } 
    public function insert(Request $request){
        $id_wisata = $request->input('id_wisata');
        $id_kota = $request->input('id_kota');
        $id_jenis_wisata = $request->input('id_jenis_wisata');
        $nama_wisata = $request->input('nama_wisata');
        $foto = $request->input('foto');
        $keterangan = $request->input('keterangan');
        $harga = $request->input('harga');
        $jam_buka = $request->input('jam_buka');
        $jam_tutup = $request->input('jam_tutup');
        $latitude = $request->input('latitude');
        $longitude = $request->input('longitude');

        $data=array('id_wisata'=>$id_wisata,"id_kota"=>$id_kota,"id_jenis_wisata"=>$id_jenis_wisata,"nama_wisata"=>$nama_wisata,
        "foto"=>$foto,"keterangan"=>$keterangan,"harga"=>$harga,"jam_buka"=>date("H:i:s", strtotime($jam_buka)),"jam_tutup"=>date("H:i:s", strtotime($jam_tutup)),
        "latitude"=>$latitude,"longitude"=>$longitude);

        DB::table('wisata')->insert($data);
        echo "Record inserted successfully.<br/>";
        echo '<a href = "/insert">Click Here</a> to go back.';

        return view('wisata_view');
    }
}