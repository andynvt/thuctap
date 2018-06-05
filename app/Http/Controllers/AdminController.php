<?php

namespace App\Http\Controllers;

use App\Feedback;
use App\Place_Type;
use App\Place;
use App\User_Location;
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
    public function AdminThemLoaidiadiem(Request $request){
        $nameTypes = $request->get('name_type');
        $description = $request->get('des');

        $loaiDiaDiem = new Place_Type();
        $loaiDiaDiem->name = $nameTypes;
        $loaiDiaDiem->description = $description;

        $loaiDiaDiem->save();
        return back()->with('success', "Thêm $nameTypes thành công");;
    }
    public function AdminSuaLoaidiadiem(Request $request,$id){
        $loaiDiaDiem= Place_Type::findOrFail($id);

        $loaiDiaDiem ->name = $request->get('name_type');
        $loaiDiaDiem ->description = $request->get('des');

        $loaiDiaDiem->update();
        return back()->with('success', "Cập nhật thành công");;
    }
    public function AdminXoaLoaidiadiem($id){
        $xoaLoai= Place_Type::find($id);
        $xoaLoai->delete();
        return back();
    }
    public function AdminXoaLoaidiadiemdachon(Request $request ) {
        $ids = $request->get('loai-dia-diem-id');

        Place_Type::destroy($ids);
        return back();
    }

    public function AdminDanhgia(Request $request){
        $id= $request->get('btn-loai');
        $danhGia= Feedback::join('places','feedbacks.id_place','=','places.id')
            ->join('place_image','place_image.id_place','=','places.id')
            ->select('feedbacks.id as fid','places.id as pid','places.name as pname',
                'place_image.name as iname')
            ->where('places.id_type',1)
            ->groupBY('places.id')
            ->get();
        return view('admin.pages.feedback',compact('danhGia'));
    }

    public function AdminChitietdanhgia(){

        return view('admin.pages.detailfeedback');
    }

    public function AdminVitringuoidung(){
        $userLocation = User_Location::all();
        return view('admin.pages.vi_tri_nguoi_dung.index',compact('userLocation'));
    }
    public function AdminXoavitringuoidung($id)
    {
        $xoaViTri = User_Location::find($id);
        $xoaViTri->delete();
        return back();
    }
    public function AdminXoavitringuoidungdachon(Request $request ) {
        $ids = $request->get('vi-tri-id');

        User_Location::destroy($ids);
        return back();
    }
}
