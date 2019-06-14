<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use DB;
use App\Http\Requests;
use App\Http\Controllers\Controller;

class FotoController extends Controller {
    public function index(){
        $kota = DB::select('select * from foto_wisata');
        return view('foto_view',['kota'=>$kota]);
    }

    public function insertform(){
        return view('foto_create');
    } 
    public function insertfoto(Request $request){
        $id_foto = $request->input('id_foto');
        $id_wisata = $request->input('id_wisata');
        $nama_foto = $request->input('nama_foto');

        $data=array("id_foto"=>$id_foto,"id_wisata"=>$id_wisata,"nama_foto"=>$nama_foto);

        DB::table('foto_wisata')->insert($data);
        // echo "Record inserted successfully.<br/>";
        // echo '<a href = "/insert">Click Here</a> to go back.';

        return redirect('/foto_view');
    }
    
    public function show($id) {
        $kota = DB::select('select * from foto_wisata where id_foto = ?',[$id]);
        return view('foto_update',['foto'=>$foto]);
    }

    public function editfoto(Request $request,$id) {
        $id_foto = $request->input('id_foto');
        $id_wisata = $request->input('id_wisata');
        $nama_foto = $request->input('nama_foto');

        DB::update('update foto_wisata set id_wisata=?,nama_foto=? where id_foto = ?',
        [$id_wisata,$nama_foto,$id_foto]);
        
        // echo "Record updated successfully.
        // ";
        // echo 'Click Here to go back.';

        return redirect('foto_view');
    }

    public function destroy($id) {
        DB::delete('delete from foto_wisata where id_foto = ?',[$id]);
        // echo "Record deleted successfully.";
        // echo 'Click Here to go back.';

        return redirect('/foto_view');
    }
}