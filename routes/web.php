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

Route::get('intro',[
	'as' => 'intro',
	'uses' => 'CustomerController@CustomerIntro'
]);

Route::get('list-place',[
	'as' => 'listplace',
	'uses' => 'CustomerController@CustomerListplace'
]);

Route::get('detail-place',[
	'as' => 'detailplace',
	'uses' => 'CustomerController@CustomerDetailplace'
]);