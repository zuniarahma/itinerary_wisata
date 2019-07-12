<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use DB;
use App\Http\Requests;
use App\Http\Controllers\Controller;

class HistoryRestApiController extends Controller
{
    public function index(){
        $history = DB::select('select * from history');
        return response()->json($history,200);
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
