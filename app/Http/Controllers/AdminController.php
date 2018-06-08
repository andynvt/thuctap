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
        return view('admin.pages.place.place');
    }

    public function AdminThemdiadiem(){
        return view('admin.pages.place.placeadd');
    }

    public function AdminSuadiadiem(){
        return view('admin.pages.place.placeedit');
    }

    public function AdminLoaidiadiem(){
//        view list all type
         $placeType= Place_Type::orderBy('id','asc')->paginate(5);
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

    public function AdminDanhgia($id){

        $danhGia= Feedback::join('places','feedbacks.id_place','=','places.id')
            ->join('place_image','place_image.id_place','=','places.id')
            ->select('feedbacks.id as fid','places.id as pid','places.name as pname',
                'place_image.name as iname')
            ->where('places.id_type',$id)
            ->groupBY('places.id')
            ->orderBy('places.id','asc')
            ->paginate(10);
        return view('admin.pages.feedback',compact('danhGia'));
    }

    public function AdminChitietdanhgia($id){
        $diaDiem= Place::find($id);
        $tongdg= Feedback::where('id_place',$id)->count();
        $avg=Feedback::where('id_place',$id)->avg('star');

        $chitiet= Feedback::join('places','places.id','=','feedbacks.id_place')
            ->select('places.id as pid', 'feedbacks.id as fid','places.created_at as pcreated_at',
                'places.updated_at as pupdated_at','feedbacks.created_at as fcreated_at',
                'feedbacks.updated_at as fupdated_at','feedbacks.star as fstar')
            ->where('places.id',$id)
            ->paginate(10);
        return view('admin.pages.detailfeedback',compact('diaDiem','chitiet','tongdg','avg'));
    }
    public function AdminXoadanhgia($id)
    {
        $xoaDanhGia= Feedback::find($id);
        $xoaDanhGia->delete();
        return back();
    }

    public function AdminVitringuoidung(){
        $userLocation = User_Location::orderBy('id','asc')->paginate(5);
        return view('admin.pages.vi_tri_nguoi_dung.index',compact('userLocation'));
    }
    public function AdminXoavitringuoidung($ids)
    {
        $xoaViTri = User_Location::find($ids);
        $xoaViTri->delete();
        return back();
    }
    public function AdminXoavitringuoidungdachon(Request $request ) {
        $ids = $request->get('vi-tri-id');

        User_Location::destroy($ids);
        return back();
    }
}
