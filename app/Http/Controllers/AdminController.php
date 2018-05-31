<?php

namespace App\Http\Controllers;

use App\Place_Type;
use App\Place;
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
//        view list all type
         $placeType= Place_Type::all();
        return view('admin.pages.loai_dia_diem.index',compact('placeType'));
    }
    public function AdminXoaLoaidiadiem($id){
        $xoa= Place_Type::find($id);
        $xoa->delete();
        return back();
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
