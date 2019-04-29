<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use DB;
use App\Http\Requests;
use App\Http\Controllers\Controller;

class WisataViewController extends Controller {
    public function index(){
        $wisata = DB::select('select * from wisata');
        return view('wisata_view',['wisata'=>$wisata]);
    }
}