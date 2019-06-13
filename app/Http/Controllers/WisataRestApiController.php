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
}
