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

Route::get('chi-tiet-dia-diem/{id}',[
	'as' => 'detailplace',
	'uses' => 'CustomerController@CustomerDetailplace'
]);