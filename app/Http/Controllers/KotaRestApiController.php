<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use DB;
use App\Http\Requests;
use App\Http\Controllers\Controller;

class KotaRestApiController extends Controller
{
    public function index(){
        $kota = DB::select('select * from kota');
        return response()->json($kota,200);
    }

    // public function dataAjax(Request $request){
    //     if($request->has('q')){

    //         $search = $request->q;
    //         $kota = DB::table("kota")
    //                     ->select("*")
    //                     ->where('nama_kota','LIKE',"%$search%")
    //                     ->get();
    //         return response()->json($kota,200);
    //     }
    //     else{
    //         $kota = DB::select('select * from kota');
    //         return response()->json($kota,200);
    //     }
        
    // }
}
