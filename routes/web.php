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

Route::get('loai-dia-diem/{id}',[
    'as' => 'customer.loai-dia-diem',
    'uses' => 'CustomerController@CustomerListplace'
]);

Route::get('loai-dia-diem',[
	'as' => 'listplace',
	'uses' => 'CustomerController@CustomerListplace'
]);

Route::get('cal-dis','CustomerController@CustomerCaldis');

Route::get('loai-dia-diem/{id}',
    'CustomerController@CustomerListplace')->name('customer.loai-dia-diem');

Route::get('loai-dia-diem/{id}',[
    'as' => 'customer.loai-dia-diem',
    'uses' => 'CustomerController@CustomerListplace'
]);

Route::get('chi-tiet-dia-diem/{id}',[
	'as' => 'detailplace',
	'uses' => 'CustomerController@CustomerDetailplace'
]);

Route::get('dg', 'CustomerController@postDanhGia') ;

// Admin
Route::group(['prefix' => 'admin'], function () {
    Route::get('/',[
        'as' => 'adminthongke',
        'uses' => 'AdminController@AdminThongke'
    ]);

    Route::get('dia-diem',[
        'as' => 'admindiadiem',
        'uses' => 'AdminController@AdminDiadiem'
    ]);

    Route::get('them-dia-diem',[
        'as' => 'adminthemdiadiem',
        'uses' => 'AdminController@AdminThemdiadiem'
    ]);

    Route::get('tp', 'AdminController@postThanhPho') ;

    Route::get('sua-dia-diem',[
        'as' => 'adminsuadiadiem',
        'uses' => 'AdminController@AdminSuadiadiem'
    ]);

    Route::get('loai-dia-diem',[
        'as' => 'adminloaidiadiem',
        'uses' => 'AdminController@AdminLoaidiadiem'
    ]);
    Route:: post('them-loai-dia-diem',[
        'as' => 'admin.them-loai',
        'uses' => 'AdminController@AdminThemLoaidiadiem'
    ]);

    Route:: post('sua-loai-dia-diem/{id}',[
        'as' => 'admin.sua-loai',
        'uses' => 'AdminController@AdminSuaLoaidiadiem'
    ]);

    Route::get('xoa-loai-dia-diem/{id}',[
        'as' => 'admin.xoa-loai',
        'uses' => 'AdminController@AdminXoaLoaidiadiem'
    ]);

    Route::get('xoa-loai-dia-diem-da-chon',[
        'as' => 'admin.xoa-da-chon',
        'uses' => 'AdminController@AdminXoaLoaidiadiemdachon'
    ]);

    Route::get('danh-gia/{id}',[
        'as' => 'admin.danh-gia',
        'uses' => 'AdminController@AdminDanhgia'
    ]);

    Route::get('chi-tiet-danh-gia/{id}',[
        'as' => 'admin.chi-tiet-danh-gia',
        'uses' => 'AdminController@AdminChitietdanhgia'
    ]);

    Route::get('xoa-danh-gia/{id}',[
        'as' => 'admin.xoa-danh-gia',
        'uses' => 'AdminController@AdminXoadanhgia'
    ]);

    Route::get('vi-tri-nguoi-dung',[
        'as' => 'adminvitringuoidung',
        'uses' => 'AdminController@AdminVitringuoidung'
    ]);
    Route::get('xoa-vi-tri-nguoi-dung/{id}',[
        'as' => 'admin.xoa-vi-tri',
        'uses' => 'AdminController@AdminXoavitringuoidung'
    ]);

    Route::get('xoa-vi-tri-da-chon',[
        'as' => 'admin.xoa-vi-tri-da-chon',
        'uses' => 'AdminController@AdminXoavitringuoidungdachon'
    ]);
});

