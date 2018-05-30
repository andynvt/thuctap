<?php

namespace App\Http\Controllers;

use App\Place_Type;
use Illuminate\Http\Request;

class AdminController extends Controller
{
    public function AdminThongke(){
        return view('admin.pages.statistics');
    }

    public function AdminDiadiem(){
        return view('admin.pages.place');
    }

    public function AdminThemdiadiem(){
        return view('admin.pages.placeadd');
    }

    public function AdminSuadiadiem(){
        return view('admin.pages.placeedit');
    }

    public function AdminLoaidiadiem(){

         $type= Place_Type::all();
        return view('admin.pages.placetype',compact('type'));
    }

    public function AdminDanhgia(){
        return view('admin.pages.feedback');
    }

    public function AdminChitietdanhgia(){
        return view('admin.pages.detailfeedback');
    }

    public function AdminVitringuoidung(){
        return view('admin.pages.userlocation');
    }
}
