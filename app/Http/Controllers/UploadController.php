<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use App\Gambar;

class UploadController extends Controller
{
	public function upload(){
		$gambar = Gambar::get();
		$wisata = DB::select('select * from wisata');
		// dd($wisata);

		return view('upload',['gambar' => $gambar, 'wisata' => $wisata]);	
	}

	public function proses_upload(Request $request){
		$this->validate($request, [
			'id_wisata' => 'required',
			'file' => 'required|file|image|mimes:jpeg,png,jpg|max:2048',
			'keterangan' => 'required',
		]);

		// menyimpan data file yang diupload ke variabel $file
		$file = $request->file('file');

		$nama_file = time()."_".$file->getClientOriginalName();

      	// isi dengan nama folder tempat kemana file diupload
		$tujuan_upload = 'data_file';
		$file->move($tujuan_upload,$nama_file);

		Gambar::create([
			'id_wisata' => $request->id_wisata,
			'file' => $nama_file,
			'keterangan' => $request->keterangan,
		]);

		return redirect()->back();
	}

	public function proses_hapus($id) {
        DB::delete('delete from gambar where id = ?',[$id]);
        // echo "Record deleted successfully.";
        // echo 'Click Here to go back.';

        return redirect('/upload');
    }
}