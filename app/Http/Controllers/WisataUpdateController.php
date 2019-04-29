<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use DB;
use App\Http\Requests;
use App\Http\Controllers\Controller;

class WisataUpdateController extends Controller {
    public function index(){
    $wisata = DB::select('select * from wisata');
    return view('wisata_edit_view',['wisata'=>$wisata]);
    }

    public function show($id) {
        $wisata = DB::select('select * from wisata where id_wisata = ?',[$id]);
        return view('wisata_update',['wisata'=>$wisata]);
    }

    public function edit(Request $request,$id) {
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

        //$data=array('first_name'=>$first_name,"last_name"=>$last_name,"city_name"=>$city_name,"email"=>$email);
        //DB::table('student')->update($data);
        // DB::table('student')->whereIn('id', $id)->update($request->all());
        DB::update('update wisata set id_kota = ?,id_jenis_wisata=?,foto=?,keterangan=?,harga=?,jam_buka=?,jam_tutup=?,latitude=?,longitude=? where id_wisata = ?',
        [$id_kota,$id_jenis_wisata,$foto,$keterangan,$harga,$jam_buka,$jam_tutup,$latitude,$longitude,$id_wisata]);
        var_dump([$id_kota,$id_jenis_wisata,$foto,$keterangan,$harga,$jam_buka,$jam_tutup,$latitude,$longitude,$id_wisata]);
        echo "Record updated successfully.
        ";
        echo 'Click Here to go back.';
    }
} 