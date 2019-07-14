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
        
        //strpos mencari lat-lng yang tdk ada "(" / bukan lat-lng 
        if(strpos($history_all_start, '(') !== false){
            // mereplace lat-lng yang ada "(" ")"
            $history_all_start = str_replace('(', '', $history_all_start);
            $history_all_start = str_replace(')', '', $history_all_start);

             // split ke array lat-lng by ","  
            $start_split = explode(",", $history_all_start);
        }
          //untuk selain lat-lng
        else{
            $start_split = array($history_all_start);
        }
        
        //strpos mencari lat-lng yang tdk ada "(" / bukan lat-lng 
        if(strpos($history_all_end, '(') !== false){
            // mereplace lat-lng yang ada "(" ")"
            $history_all_end = str_replace('(', '', $history_all_end);
            $history_all_end = str_replace(')', '', $history_all_end);
            
            // split ke array lat-lng by "," 
            $end_split = explode(",", $history_all_end);
        }
        //untuk selain lat-lng
        else{
            $end_split = array($history_all_end);
        }

        // cek jika jumlah array lebih 1
        // > 1: coordinat
        // 1: nama lokasi
        // hasilnya dapatkan nama lokasi
        if (count($start_split) > 1) {
            $select_nama_wisata_start = DB::select("select nama_wisata from wisata WHERE latitude LIKE '%" . round($start_split[0], 6) . "%' AND longitude LIKE '%" . round($start_split[1], 6) . "%'");
            // cek jika tidak ditemukan di db
            // set select-nya ke koordinat semula
            if (count($select_nama_wisata_start) == 0) {
                $select_nama_wisata_start = $history_all_start;
            } else {
                // jika dia ada di db, set nama_wisata
                $select_nama_wisata_start = $select_nama_wisata_start[0]->nama_wisata;
            }
        } else {
            $select_nama_wisata_start = $start_split[0];
        }
        
        if (count($end_split) > 1) {
            $select_nama_wisata_end = DB::select("select nama_wisata from wisata WHERE latitude LIKE '%" . round($end_split[0], 6) . "%' AND longitude LIKE '%" . round($end_split[1], 6) . "%'");
            // echo "select nama_wisata from wisata WHERE latitude LIKE '%" . round($end_split[0], 6) . "%' AND longitude LIKE '%" . round($end_split[1], 6) . "%'";
            // echo $select_nama_wisata_end[0]->nama_wisata;
            // dd($select_nama_wisata_end[0]);
            if (count($select_nama_wisata_end) == 0) {
                $select_nama_wisata_end = $history_all_end;
            } else {
                $select_nama_wisata_end = $select_nama_wisata_end[0]->nama_wisata;
            }
        } else {
            $select_nama_wisata_end = $end_split[0];
        }

        $data=array("id_history"=>$id_history,"stay_wisata"=>$waypoints_waktu,"durasi"=>$perjalanan_waktu,"start_wisata"=>$select_nama_wisata_start,"end_wisata"=>$select_nama_wisata_end);
        
        $waktu_tempuh=DB::table('waktu_tempuh')->insertGetId($data);
        // echo "Record inserted successfully.<br/>";
        // echo '<a href = "/insert">Click Here</a> to go back.';

        return response()->json($waktu_tempuh,200);
    }

    public function tampil_waktu_tempuh(Request $request){
        // $waktu_wisata = DB::select('select * from waktu_tempuh');
        // return response()->json($waktu_wisata,200);

        $id = (int) $request->query('id');

        // dd((int)$id);

        // dd($id_user);

        // $id=1; //buat panggil auth user
        $max_history = DB::table('history')->where('id_user',$id)->max('id_history');
        // dd($max_history);
        // $waktu_wisata = DB::select('select * from waktu_tempuh JOIN history ON history.id_history = waktu_tempuh.id_history');
        
        $waktu_wisata = DB::select('select * from waktu_tempuh JOIN history ON history.id_history = waktu_tempuh.id_history where history.id_history = ?',[$max_history]);
        // dd($waktu_wisata);

        return response()->json($waktu_wisata,200);
    }

    public function tampil_history(Request $request){
        // $waktu_wisata = DB::select('select * from waktu_tempuh');
        // return response()->json($waktu_wisata,200);

        $id = (int) $request->query('id');

        // dd((int)$id);

        // dd($id_user);

        // $id=1; //buat panggil auth user
        $max_history = DB::table('history')->where('id_user',$id)->max('id_history');
        // dd($max_history);
        // $waktu_wisata = DB::select('select * from waktu_tempuh JOIN history ON history.id_history = waktu_tempuh.id_history');
        
        $history = DB::select('select * from history where id_history = ?',[$max_history]);
        // dd($waktu_wisata);

        return response()->json($history,200);
    }
}