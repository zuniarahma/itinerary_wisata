<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return redirect('home');
});

// // View Data
// Route::get('wisata_view','WisataViewController@index'); 

// //insert data
// Route::get('insert','WisataInsertController@insertform');
// Route::post('wisata_create','WisataInsertController@insert'); 

// //Update data
// Route::get('edit-records','WisataUpdateController@index');
// Route::get('edit/{id}','WisataUpdateController@show');
// Route::post('edit/{id}','WisataUpdateController@edit'); 

// //delete data
// Route::get('delete-records','WisataDeleteController@index');
// Route::get('delete/{id}','WisataDeleteController@destroy'); 

//=====================================================
///WISATA

// View Data
Route::get('wisata_view','WisataController@index'); 

//insert data
Route::get('insertwisata','WisataController@insertform');
Route::post('wisata_create','WisataController@insertwisata'); 

//Update data
Route::get('edit-records','WisataController@index');
Route::get('editwisata/{id}','WisataController@show');
Route::post('editwisata/{id}','WisataController@editwisata'); 

//delete data
Route::get('delete-records','WisataController@index');
Route::get('deletewisata/{id}','WisataController@destroy'); 

//====================================================
///JENIS WISATA

// View Data
Route::get('jenis_wisata_view','JenisWisataController@index'); 

//insert data
Route::get('insertjenis','JenisWisataController@insertform');
Route::post('jenis_wisata_create','JenisWisataController@insertjenis'); 

//Update data
Route::get('edit-records','JenisWisataController@index');
Route::get('editjenis/{id}','JenisWisataController@show');
Route::post('editjenis/{id}','JenisWisataController@editjenis'); 

//delete data
Route::get('delete-records','JenisWisataController@index');
Route::get('deletejenis/{id}','JenisWisataController@destroy'); 


//====================================================
///KOTA

// View Data
Route::get('/kota_view','KotaController@index'); 

//insert data
Route::get('insertkota','KotaController@insertform');
Route::post('kota_create','KotaController@insertkota'); 

//Update data
Route::get('edit-records','KotaController@index');
Route::get('editkota/{id}','KotaController@show');
Route::post('editkota/{id}','KotaController@editkota'); 

//delete data
Route::get('delete-records','KotaController@index');
Route::get('deletekota/{id}','KotaController@destroy');

//====================================================
///FOTO

// View Data
Route::get('foto_view','FotoController@index'); 

//insert data
Route::get('insertfoto','FotoController@insertform');
Route::post('foto_create','FotoController@insertfoto'); 

//Update data
Route::get('edit-records','FotoController@index');
Route::get('editfoto/{id}','FotoController@show');
Route::post('editfoto/{id}','FotoController@editfoto'); 

//delete data
Route::get('delete-records','FotoController@index');
Route::get('deletefoto/{id}','FotoController@destroy'); 

//

Route::get('image_create', 'ImageUploadController@imageUpload')->name('image.upload');
Route::post('image_create', 'ImageUploadController@imageUploadPost')->name('image.upload.post');

//====================================================
///USER

// View Data
Route::get('user_view','UserController@index'); 

//insert data
Route::get('insertuser','UserController@insertform');
Route::post('user_create','UserController@insertuser'); 

//Update data
Route::get('edit-records','UserController@index');
Route::get('edituser/{id}','UserController@show');
Route::post('edituser/{id}','UserController@edituser'); 

//delete data
Route::get('delete-records','UserController@index');
Route::get('deleteuser/{id}','UserController@destroy'); 


//====================================================
///GMAPS

Route::get('gmaps', 'GmapsController@gmaps');
Route::get('transit', 'GmapsController@transit');
Route::get('gmapscopy', 'GmapsController@gmapscopy');

//====================================================
///REST API

Route::get('api/wisata', 'WisataRestApiController@index');
Route::get('api/searchwisata', 'WisataRestApiController@dataAjax');

Route::get('api/kota', 'KotaRestApiController@index');
//Route::get('api/searchkota', 'KotaRestApiController@dataAjax');

Route::get('api/jenis_wisata', 'JenisWisataRestApiController@index');
Route::get('api/history', 'HistoryRestApiController@index');

//====================================================
///WAKTU TEMPUH

Route::post('api/history', 'WaktuTempuhController@history');
Route::post('api/waktu_tempuh', 'WaktuTempuhController@waktu_tempuh');
Route::get('api/waktu_wisata', 'WaktuTempuhController@tampil_waktu_tempuh');

//====================================================
///COBA TEMPLATE

Route::get('coba_template1', 'CobaController@coba1');
Route::get('coba_template2', 'CobaController@coba2');
Route::get('coba_template3', 'CobaController@coba3');
Route::get('coba_template4', 'CobaController@coba4');
Route::get('coba_template5', 'CobaController@coba5');

//====================================================

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::get('/tampil_wisata', 'HomeController@tampil_wisata')->name('tampil_wisata');

//====================================================
// ///LOGIN USER

// Route::get('/home_user', 'User@index');
//Route::get('/login', 'User@login');
// Route::post('/loginPost', 'User@loginPost');
// Route::get('/register', 'User@register');
// Route::post('/registerPost', 'User@registerPost');
// Route::get('/logout', 'User@logout');
// Auth::routes();

// Route::get('/home', 'HomeController@index')->name('home');


//====================================================
///TAMPIL WISATA

// Route::get('/tampil_wisata', function () {
//     return view('tampil_wisata');
// });