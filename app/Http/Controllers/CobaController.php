<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use DB;
use App\Http\Requests;
use App\Http\Controllers\Controller;

class CobaController extends Controller {
    public function coba1(){
        
        return view('coba_template1');
    }
    public function coba2(){
        
        return view('coba_template2');
    }

}

?>
