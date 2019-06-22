<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use DB;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use DateTime;

class WaktuTempuhController extends Controller {

    public function history(Request $request){
        // $id_history = $request->input('id_history');
        $total_perjalanan_waktu = $request->input('total_perjalanan_waktu');
        $id_user = $request->input('id_user');
        $time_start = new DateTime($request->input('time_start'));

        $data=array('total_perjalanan'=>$total_perjalanan_waktu,'id_user'=>$id_user,'time_start'=>$time_start);

        $history=DB::table('history')->insertGetId($data);
        // echo "Record inserted successfully.<br/>";
        // echo '<a href = "/insert">Click Here</a> to go back.';
        return response()->json($history,200);

    }

    public function waktu_tempuh(Request $request){
        $id_history = $request->input('id_history');
        $waypoints_waktu = $request->input('waypoints_waktu');
        $perjalanan_waktu = $request->input('perjalanan_waktu');
        $history_all_start = $request->input('history_all_start');
        $history_all_end = $request->input('history_all_end');

        //select all wisata, split by koma
        // standartkan aturan penulisan lat lng

        $data=array("id_history"=>$id_history,"stay_wisata"=>$waypoints_waktu,"durasi"=>$perjalanan_waktu,"start_wisata"=>$history_all_start,"end_wisata"=>$history_all_end);
        //ubah history all ke hasil select

        $waktu_tempuh=DB::table('waktu_tempuh')->insertGetId($data);
        // echo "Record inserted successfully.<br/>";
        // echo '<a href = "/insert">Click Here</a> to go back.';

        return response()->json($waktu_tempuh,200);
    }
}