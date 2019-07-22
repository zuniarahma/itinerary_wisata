<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use DB;
use App\Http\Requests;
use App\Http\Controllers\Controller;

class TutorialController extends Controller {
    public function index(){        
        return view('tutorial');
    }
}

?>