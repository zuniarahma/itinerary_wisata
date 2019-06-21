<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use DB;
use App\Http\Requests;
use App\Http\Controllers\Controller;

class WaktuTempuhController extends Controller {
    public function index(){
        $waypoints_waktu = $request->input('stay_wisata');
        $perjalanan_waktu = $request->input('durasi');
        $history_all[1] = $request->input('start_wisata');
        $history_all[i+1] = $request->input('end_wisata');

        $data=array("stay_wisata"=>$waypoints_waktu,"durasi"=>$perjalanan_waktu,"start_wisata"=>$history_all,"end_wisata"=>$history_all);

        DB::table('waktu_tempuh')->insert($data);
        // echo "Record inserted successfully.<br/>";
        // echo '<a href = "/insert">Click Here</a> to go back.';

        return redirect('/gmaps');
    }
}