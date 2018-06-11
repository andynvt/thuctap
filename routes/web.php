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

Route::get('cal-dis','CustomerController@CustomerCaldis');

Route::get('loai-dia-diem/{id}',
    'CustomerController@CustomerListplace')->name('customer.loai-dia-diem');

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
    Route:: post('them-loai-dia-diem',
        'AdminController@AdminThemLoaidiadiem')->name('admin.them-loai');

    Route:: post('sua-loai-dia-diem/{id}',
        'AdminController@AdminSuaLoaidiadiem')->name('admin.sua-loai');

    Route::get('xoa-loai-dia-diem/{id}',
        'AdminController@AdminXoaLoaidiadiem')->name('admin.xoa-loai');

    Route::get('xoa-loai-dia-diem-da-chon',
        'AdminController@AdminXoaLoaidiadiemdachon')->name('admin.xoa-da-chon');

    Route::get('danh-gia/{id}',
        'AdminController@AdminDanhgia')->name('admin.danh-gia');

    Route::get('chi-tiet-danh-gia/{id}',
        'AdminController@AdminChitietdanhgia')->name('admin.chi-tiet-danh-gia');
    Route::get('xoa-danh-gia/{id}',
        'AdminController@AdminXoadanhgia')->name('admin.xoa-danh-gia');
    Route::get('vi-tri-nguoi-dung',[
        'as' => 'adminvitringuoidung',
        'uses' => 'AdminController@AdminVitringuoidung'
    ]);
    Route::get('xoa-vi-tri-nguoi-dung/{id}',
        'AdminController@AdminXoavitringuoidung')->name('admin.xoa-vi-tri');
    Route::get('xoa-vi-tri-da-chon',
        'AdminController@AdminXoavitringuoidungdachon')->name('admin.xoa-vi-tri-da-chon');
});

