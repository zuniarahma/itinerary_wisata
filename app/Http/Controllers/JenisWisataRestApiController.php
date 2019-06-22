<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use DB;
use App\Http\Requests;
use App\Http\Controllers\Controller;

class JenisWisataRestApiController extends Controller
{
    public function index(){
        $jenis_wisata = DB::select('select * from jenis_wisata');
        return response()->json($jenis_wisata,200);
    }
}
