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
    return view('welcome');
});


Route::resource("/admin/specialization","Admin\SpecializationController");
Route::get("/admin/specialization/{id}/delete","Admin\SpecializationController@destroy");
Route::get("/admin/specialization/{id}/status","Admin\SpecializationController@status");

Route::get("/admin/doctorprofile/{id}/delete","Admin\DoctorprofileController@destroy");
Route::resource("/admin/doctorprofile","Admin\DoctorprofileController");
Route::get("/admin/doctorprofile/{id}/status","Admin\DoctorprofileController@status");
Route::get("/admin/doctorprofile/{id}/allowComment","Admin\DoctorprofileController@allowComment");





Route::resource("/admin/admin","Admin\AdminController");
Route::get("/admin/admin/{id}/delete","Admin\AdminController@destroy");
Route::get("/admin/admin/{id}/status","Admin\AdminController@status");
Route::get("/admin/admin/{id}/permission","Admin\AdminController@permission");
Route::post("/admin/admin/{id}/setpermission","Admin\AdminController@setpermission");




Route::resource("/admin/slider","Admin\SliderController");
Route::get("/admin/slider/{id}/delete","Admin\SliderController@destroy");
Route::get("/admin/slider/{id}/status","Admin\SliderController@status");


Route::resource("/admin/comment","Admin\CommentController");
Route::get("/admin/comment/{id}/delete","Admin\CommentController@destroy");
Route::get("/admin/comment/{id}/status","Admin\CommentController@status");
Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::get('/admin', 'Admin\HomeController@index');
Route::get('/admin/home/noaccess', 'Admin\HomeController@noaccess');
Route::get('/home/doctors', 'HomeController@doctors');
Route::get('/home/doctor/{id}', 'HomeController@doctor');
Route::post('/home/doctor/{id}', 'HomeController@postcomment');

Route::get('/new', 'HomeController@new');