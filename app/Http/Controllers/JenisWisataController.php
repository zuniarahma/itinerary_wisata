<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use DB;
use App\Http\Requests;
use App\Http\Controllers\Controller;

class JenisWisataController extends Controller {
    public function index(){
        $jenis_wisata = DB::select('select * from jenis_wisata');
        return view('jenis_wisata_view',['jenis_wisata'=>$jenis_wisata]);
    }

    public function insertform(){
        return view('jenis_wisata_create');
    } 
    public function insertjenis(Request $request){
        $id_jenis_wisata = $request->input('id_jenis_wisata');
        $nama_jenis = $request->input('nama_jenis');

        $data=array('id_jenis_wisata'=>$id_jenis_wisata,"nama_jenis"=>$nama_jenis);

        DB::table('jenis_wisata')->insert($data);
        // echo "Record inserted successfully.<br/>";
        // echo '<a href = "/insert">Click Here</a> to go back.';

        return redirect('/jenis_wisata_view');
    }
    
    public function show($id) {
        $jenis_wisata = DB::select('select * from jenis_wisata where id_jenis_wisata = ?',[$id]);
        return view('jenis_wisata_update',['jenis_wisata'=>$jenis_wisata]);
    }

    public function editjenis(Request $request,$id) {
        $id_jenis_wisata = $request->input('id_jenis_wisata');
        $nama_jenis = $request->input('nama_jenis');
        
        DB::update('update jenis_wisata set nama_jenis=? where id_jenis_wisata = ?',
        [$nama_jenis,$id_jenis_wisata]);
        
        // echo "Record updated successfully.
        // ";
        // echo 'Click Here to go back.';

        return redirect('/jenis_wisata_view');
    }

    public function destroy($id) {
        DB::delete('delete from jenis_wisata where id_jenis_wisata = ?',[$id]);
        // echo "Record deleted successfully.";
        // echo 'Click Here to go back.';

        return redirect('/jenis_wisata_view');
    }
}