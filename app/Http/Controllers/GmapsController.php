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
    public function gmapscopy()
    {
    	$wisata = DB::table('wisata')->get();
    	return view('gmapscopy',compact('wisata'));
    }

    public function detail_wisata($id)
    {
    	$wisata = DB::table('wisata')->join('gambar', 'gambar.id_wisata', '=', 'wisata.id_wisata')->select("*")
        ->where('wisata.id_wisata', $id)->first();
        // dd($wisata);

        // SELECT * FROM `wisata` JOIN gambar WHERE wisata.id_wisata=gambar.id_wisata;

    	return view('detail_wisata',compact('wisata'));
    }
}

?>
