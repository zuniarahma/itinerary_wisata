<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use DB;
use App\Http\Requests;
use App\Http\Controllers\Controller;

class ImagesRestApiController extends Controller
{
    public function index(){
        $gambar = DB::select('select * from gambar');
        return response()->json($gambar,200);
    }
}
