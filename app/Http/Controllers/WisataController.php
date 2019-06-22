<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use DB;
use App\Http\Requests;
use App\Http\Controllers\Controller;

class WisataController extends Controller {
    public function index(){
        $wisata = DB::select('select * from wisata');
        return view('wisata_view',['wisata'=>$wisata]);
    }

    public function insertform(){
        return view('wisata_create');
    } 
    public function insertwisata(Request $request){
        // $id_wisata = $request->input('id_wisata');
        $id_kota = $request->input('id_kota');
        $id_jenis_wisata = $request->input('id_jenis_wisata');
        $nama_wisata = $request->input('nama_wisata');
        $keterangan = $request->input('keterangan');
        $fasilitas = $request->input('fasilitas');
        $alamat = $request->input('alamat');
        $harga = $request->input('harga');
        $jam_buka = $request->input('jam_buka');
        $jam_tutup = $request->input('jam_tutup');
        $latitude = $request->input('latitude');
        $longitude = $request->input('longitude');

        $data=array("id_kota"=>$id_kota,"id_jenis_wisata"=>$id_jenis_wisata,"nama_wisata"=>$nama_wisata,
        "keterangan"=>$keterangan,"fasilitas"=>$fasilitas,"alamat"=>$alamat,"harga"=>$harga,"jam_buka"=>date("H:i:s", strtotime($jam_buka)),"jam_tutup"=>date("H:i:s", strtotime($jam_tutup)),
        "latitude"=>$latitude,"longitude"=>$longitude);

        DB::table('wisata')->insert($data);
        // echo "Record inserted successfully.<br/>";
        // echo '<a href = "/insert">Click Here</a> to go back.';

        return redirect('/wisata_view');
    }
    
    public function show($id) {
        $wisata = DB::select('select * from wisata where id_wisata = ?',[$id]);
        return view('wisata_update',['wisata'=>$wisata]);
    }

    public function editwisata(Request $request,$id) {
        
        $id_kota = $request->input('id_kota');
        $id_jenis_wisata = $request->input('id_jenis_wisata');
        $nama_wisata = $request->input('nama_wisata');
        $keterangan = $request->input('keterangan');
        $fasilitas = $request->input('fasilitas');
        $alamat = $request->input('alamat');
        $harga = $request->input('harga');
        $jam_buka = $request->input('jam_buka');
        $jam_tutup = $request->input('jam_tutup');
        $latitude = $request->input('latitude');
        $longitude = $request->input('longitude');
        
        //$data=array('first_name'=>$first_name,"last_name"=>$last_name,"city_name"=>$city_name,"email"=>$email);
        //DB::table('student')->update($data);
        // DB::table('student')->whereIn('id', $id)->update($request->all());
        DB::update('update wisata set ,id_jenis_wisata=?,nama_wisata=?,keterangan=?,fasilitas=?,alamat=?,harga=?,jam_buka=?,jam_tutup=?,latitude=?,longitude=? where id_wisata = ?',
        [$id_jenis_wisata,$nama_wisata,$keterangan,$fasilitas,$alamat,$harga,$jam_buka,$jam_tutup,$latitude,$longitude,$id_wisata]);
        // var_dump([$id_kota,$id_jenis_wisata,$foto,$keterangan,$harga,$jam_buka,$jam_tutup,$latitude,$longitude,$id_wisata]);
        
        // echo "Record updated successfully.
        // ";
        // echo 'Click Here to go back.';

        return redirect('/wisata_view');
    }

    public function destroy($id) {
        DB::delete('delete from wisata where id_wisata = ?',[$id]);
        // echo "Record deleted successfully.";
        // echo 'Click Here to go back.';

        return redirect('/wisata_view');
    }
}