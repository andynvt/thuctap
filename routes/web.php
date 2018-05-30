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

// Customer

Route::get('index',[
	'as' => 'intro',
	'uses' => 'CustomerController@CustomerIntro'
]);

Route::get('loai-dia-diem',[
	'as' => 'listplace',
	'uses' => 'CustomerController@CustomerListplace'
]);

Route::get('chi-tiet-dia-diem',[
	'as' => 'detailplace',
	'uses' => 'CustomerController@CustomerDetailplace'
]);


// Admin
Route::get('admin/thong-ke',[
	'as' => 'adminthongke',
	'uses' => 'AdminController@AdminThongke'
]);

Route::get('admin/dia-diem',[
	'as' => 'admindiadiem',
	'uses' => 'AdminController@AdminDiadiem'
]);

Route::get('admin/them-dia-diem',[
	'as' => 'adminthemdiadiem',
	'uses' => 'AdminController@AdminThemdiadiem'
]);

Route::get('admin/sua-dia-diem',[
	'as' => 'adminsuadiadiem',
	'uses' => 'AdminController@AdminSuadiadiem'
]);

Route::get('admin/loai-dia-diem',[
	'as' => 'adminloaidiadiem',
	'uses' => 'AdminController@AdminLoaidiadiem'
]);

Route::get('admin/danh-gia',[
	'as' => 'admindanhgia',
	'uses' => 'AdminController@AdminDanhgia'
]);

Route::get('admin/chi-tiet-danh-gia',[
	'as' => 'adminchitietdanhgia',
	'uses' => 'AdminController@AdminChitietdanhgia'
]);

Route::get('admin/vi-tri-nguoi-dung',[
	'as' => 'adminvitringuoidung',
	'uses' => 'AdminController@AdminVitringuoidung'
]);
