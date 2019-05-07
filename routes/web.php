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

/*Route::get('/', function () {
    return view('wisata_view');
});*/

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
Route::post('wisata_create','WisataController@insert'); 

//Update data
Route::get('edit-records','WisataController@index');
Route::get('edit/{id}','WisataController@show');
Route::post('edit/{id}','WisataController@edit'); 

//delete data
Route::get('delete-records','WisataController@index');
Route::get('delete/{id}','WisataController@destroy'); 

//====================================================
///JENIS WISATA

// View Data
Route::get('jenis_wisata_view','JenisWisataController@index'); 

//insert data
Route::get('insertjenis','JenisWisataController@insertform');
Route::post('wisata_create','JenisWisataController@insert'); 

//Update data
Route::get('edit-records','JenisWisataController@index');
Route::get('edit/{id}','JenisWisataController@show');
Route::post('edit/{id}','JenisWisataController@edit'); 

//delete data
Route::get('delete-records','JenisWisataController@index');
Route::get('delete/{id}','JenisWisataController@destroy'); 


//====================================================
///KOTA

// View Data
Route::get('kota_view','KotaController@index'); 

//insert data
Route::get('insertkota','KotaController@insertform');
Route::post('kota_create','KotaController@insert'); 

//Update data
Route::get('edit-records','KotaController@index');
Route::get('edit/{id}','KotaController@show');
Route::post('edit/{id}','KotaController@edit'); 

//delete data
Route::get('delete-records','KotaController@index');
Route::get('delete/{id}','KotaController@destroy');


//====================================================
///USER

// View Data
Route::get('user_view','UserController@index'); 

//insert data
Route::get('insertuser','UserController@insertform');
Route::post('user_create','UserController@insert'); 

//Update data
Route::get('edit-records','UserController@index');
Route::get('edit/{id}','UserController@show');
Route::post('edit/{id}','UserController@edit'); 

//delete data
Route::get('delete-records','UserController@index');
Route::get('delete/{id}','UserController@destroy'); 