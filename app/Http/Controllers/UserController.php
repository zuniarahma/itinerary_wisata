<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use DB;
use App\Http\Requests;
use App\Http\Controllers\Controller;

class UserController extends Controller {
    public function index(){
        $user = DB::select('select * from user');
        return view('user_view',['user'=>$user]);
    }

    public function insertform(){
        return view('user_create');
    } 
    public function insertuser(Request $request){
        $id_user = $request->input('id_user');
        $id_role = $request->input('id_role');
        $nama_user = $request->input('nama_user');
        $email = $request->input('email');
        $username = $request->input('username');
        $password = $request->input('password');
        $alamat = $request->input('alamat');

        $data=array('id_user'=>$id_user,"id_role"=>$id_role,"nama_user"=>$nama_user,
        "email"=>$email,"username"=>$username,"password"=>$password,"alamat"=>$alamat);

        DB::table('user')->insert($data);
        // echo "Record inserted successfully.<br/>";
        // echo '<a href = "/insert">Click Here</a> to go back.';

        return redirect('/user_view');
    }
    
    public function show($id) {
        $user = DB::select('select * from user where id_user = ?',[$id]);
        return view('user_update',['user'=>$user]);
    }

    public function edit(Request $request,$id) {
        $id_user = $request->input('id_user');
        $id_role = $request->input('id_role');
        $nama_user = $request->input('nama_user');
        $email = $request->input('email');
        $username = $request->input('username');
        $password = $request->input('password');
        $alamat = $request->input('alamat');
        
        DB::update('update user set id_role=?,nama_user=?,email=?,username=?,password=?,alamat=? where id_user = ?',
        [$id_role,$nama_user,$email,$username,$password,$alamat,$id_user]);
        
        // echo "Record updated successfully.
        // ";
        // echo 'Click Here to go back.';

        return redirect('/user_view');
    }

    public function destroy($id) {
        DB::delete('delete from user where id_user = ?',[$id]);
        // echo "Record deleted successfully.";
        // echo 'Click Here to go back.';

        return redirect('/user_view');
    }
}