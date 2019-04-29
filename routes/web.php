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

// View Data
Route::get('wisata_view','WisataController@index'); 

//insert data
Route::get('insert','WisataController@insertform');
Route::post('wisata_create','WisataController@insert'); 

//Update data
Route::get('edit-records','WisataController@index');
Route::get('edit/{id}','WisataController@show');
Route::post('edit/{id}','WisataController@edit'); 

//delete data
Route::get('delete-records','WisataController@index');
Route::get('delete/{id}','WisataController@destroy'); 
