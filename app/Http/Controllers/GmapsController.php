<?php
namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;

use DB;

class GmapsController extends Controller{
    public function gmaps()
    {
    	$wisata = DB::table('wisata')->get();
    	return view('gmaps',compact('wisata'));
    }

    public function transit()
    {
    	$wisata = DB::table('wisata')->get();
    	return view('transit',compact('wisata'));
    }
}

?>
