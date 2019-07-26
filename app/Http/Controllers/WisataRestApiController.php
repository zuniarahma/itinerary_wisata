<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use DB;
use App\Http\Requests;
use App\Http\Controllers\Controller;

class WisataRestApiController extends Controller
{
    public function index(){
        $wisata = DB::select('select * from wisata');
        return response()->json($wisata,200);
    }

    public function dataAjax(Request $request){
        if($request->has('q')){

            $search = $request->q;
            $wisata = DB::table("wisata")
                        ->select("*")
                        ->where('nama_wisata','LIKE',"%$search%")
                        ->get();
            return response()->json($wisata,200);
        }
        else{
            $wisata = DB::select('select * from wisata order by nama_wisata asc');
            
            return response()->json($wisata,200);
        }    
    }

    public function tampil_wisata(Request $request){
        $tampil_wisata = DB::select('select * from gambar JOIN wisata WHERE wisata.id_wisata = gambar.id_wisata');
        return response()->json($tampil_wisata,200);
    }
}
