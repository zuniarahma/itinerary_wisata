<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use DB;
use App\Http\Requests;
use App\Http\Controllers\Controller;

class WisataDeleteController extends Controller {
    public function index(){
        $wisata = DB::select('select * from wisata');
        return view('wisata_delete_view',['wisata'=>$wisata]);
    }

    public function destroy($id) {
        DB::delete('delete from wisata where id_wisata = ?',[$id]);
        echo "Record deleted successfully.
        ";
        echo 'Click Here to go back.';
    }
}