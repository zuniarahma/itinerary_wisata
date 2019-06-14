<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use DB;
use App\Http\Requests;
use App\Http\Controllers\Controller;

class KotaController extends Controller {
    public function index(){
        $kota = DB::select('select * from kota');
        return view('kota_view',['kota'=>$kota]);
    }

    public function insertform(){
        return view('kota_create');
    } 
    public function insertkota(Request $request){
        $id_kota = $request->input('id_kota');
        $nama_kota = $request->input('nama_kota');

        $data=array("id_kota"=>$id_kota,"nama_kota"=>$nama_kota);

        DB::table('kota')->insert($data);
        // echo "Record inserted successfully.<br/>";
        // echo '<a href = "/insert">Click Here</a> to go back.';

        return redirect('/kota_view');
    }
    
    public function show($id) {
        $kota = DB::select('select * from kota where id_kota = ?',[$id]);
        return view('kota_update',['kota'=>$kota]);
    }

    public function editkota(Request $request,$id) {
        $id_kota = $request->input('id_kota');
        $nama_kota = $request->input('nama_kota');
        
        DB::update('update kota set nama_kota=? where id_kota = ?',
        [$nama_kota,$id_kota]);
        
        // echo "Record updated successfully.
        // ";
        // echo 'Click Here to go back.';

        return redirect('kota_view');
    }

    public function destroy($id) {
        DB::delete('delete from kota where id_kota = ?',[$id]);
        // echo "Record deleted successfully.";
        // echo 'Click Here to go back.';

        return redirect('/kota_view');
    }
}