<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use DB;
use App\Http\Requests;
use App\Http\Controllers\Controller;

class CobaController extends Controller {
    public function index(){
        
        return view('coba_template1');
    }

}

?>
