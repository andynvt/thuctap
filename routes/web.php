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

Auth::routes();

Route::get('/home','HomeController@index');
Route::post('/admin/login',[
    'as' => 'admin.login.submit',
    'uses' => 'Auth\AdminLoginController@login'
]);
Route::get('/admin/login',[
    'as' =>'admin.login',
    'uses' => 'Auth\AdminLoginController@showLoginForm'
]);
// Customer

Route::get('index',[
	'as' => 'intro',
	'uses' => 'CustomerController@CustomerIntro'
]);

Route::get('cal-dis','CustomerController@CustomerCaldis');

Route::get('loai-dia-diem/{id}',[
    'as' => 'customer.loai-dia-diem',
    'uses' => 'CustomerController@CustomerListplace'
]);

Route::get('pho-bien',[
    'as' => 'customer.pho-bien',
    'uses' => 'CustomerController@CustomerListplaceFavorite'
]);

Route::get('chi-tiet-dia-diem/{id}',[
	'as' => 'detailplace',
	'uses' => 'CustomerController@CustomerDetailplace'
]);

Route::get('dg', 'CustomerController@postDanhGia') ;



// Admin
Route::group(['prefix' => 'admin', 'middleware' => 'auth:admin'], function () {
    Route::get('logout/', [
        'as' => 'admin.logout',
        'uses' => 'Auth\AdminLoginController@logout'
    ]);

    Route::get('/',[
        'as' => 'adminthongke',
        'uses' => 'AdminController@AdminThongke'
    ]);

    Route::get('dia-diem',[
        'as' => 'admindiadiem',
        'uses' => 'AdminController@AdminDiadiem'
    ]);

    Route::get('xoa-dia-diem/{id}',[
        'as' => 'adminxoadiadiem',
        'uses' => 'AdminController@AdminXoaDiadiem'
    ]);

    Route::get('xoa-nhieu-dia-diem',[
        'as' => 'adminxoanhieudiadiem',
        'uses' => 'AdminController@AdminXoaNhieuDiadiem'
    ]);

    Route::get('them-dia-diem',[
        'as' => 'adminthemdiadiem',
        'uses' => 'AdminController@AdminThemdiadiem'
    ]);

    Route::post('add',[
        'as' => 'adminpostdiadiem',
        'uses' => 'AdminController@AdminPostdiadiem'
    ]);

    Route::get('get-tp','AdminController@getThanhPho');

    Route::get('sua-dia-diem/{id}',[
        'as' => 'adminsuadiadiem',
        'uses' => 'AdminController@AdminSuadiadiem'
    ]);
    
    Route::get('edit/{id}',[
        'as' => 'adminpostedit',
        'uses' => 'AdminController@AdminPostedit'
    ]);

    Route::get('delimg', 'AdminController@AjaxXoaimg');

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
    Route::get('xoa-danh-gia-da-chon',[
        'as' => 'admin.xoa-danh-gia-da-chon',
        'uses' => 'AdminController@AdminXoaDanhGiadachon'
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

