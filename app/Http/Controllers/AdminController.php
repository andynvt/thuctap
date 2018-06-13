<?php

namespace App\Http\Controllers;

use App\City;
use App\District;
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
        $place = Place::leftjoin('place_image', 'places.id', '=', 'place_image.id_place')
            ->leftjoin('place_type', 'places.id_type', '=', 'place_type.id')
            ->leftjoin('districts', 'districts.id', '=', 'places.id_district')
            ->leftjoin('cities', 'cities.id', '=', 'districts.id_city')
            ->leftjoin('place_location', 'places.id', '=', 'place_location.id_place')
            ->select('places.*', 'place_image.name as piname', 'place_type.name as ptname', 'districts.name as dname', 'cities.name as cname','place_location.coor')
            ->groupBy('places.id')
            ->get();
        return view('admin.pages.place.place', compact('place'));
    }

    public function AdminXoaDiadiem($id){
        Place::destroy($id);
        return redirect()->back();
    }

    public function AdminXoaNhieuDiadiem(Request $req){
        $ids = $req->get('place-id');
        Place::destroy($ids);
        return back();
    }

    public function AdminThemdiadiem(){
        $place_type = Place_Type::all();
        $city = City::all();
        $district = District::all();
        return view('admin.pages.place.placeadd', compact('place_type','city','district'));
    }

    public function getThanhPho(Request $req){
        $id_city = $req->id;
//        $district = District::where('id_city', $id_city)->get();

        return json_encode($id_city);
    }

    public function AdminSuadiadiem($id){

        return view('admin.pages.place.placeedit', compact('id'));
    }

    public function AdminLoaidiadiem(){
//        view list all type
         $placeType= Place_Type::orderBy('id','asc')->get();
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
        return back()->with('success', "Cập nhật thành công");
    }
    public function AdminXoaLoaidiadiem($id){

        $xoaLoai= Place_Type::find($id);
        $xoaLoai->delete();
        return back();
    }
    public function AdminXoaLoaidiadiemdachon(Request $request) {

        $id = $request->get('loai-dia-diem-id');
        Place_Type::destroy($id);
        return back();
    }

    public function AdminDanhgia($id){//
        $notify_fb= Feedback::join('places','feedbacks.id_place','=','places.id')
            ->join('place_image','place_image.id_place','=','places.id')
            ->select('feedbacks.id as fid','places.id as pid','places.name as pname',
                'place_image.name as iname')
            ->where('places.id_type',$id)
            ->where('status',0)
            ->groupBY('places.id')
            ->orderBy('places.id','asc')
            ->get();
        $danhGia= Feedback::join('places','feedbacks.id_place','=','places.id')
            ->join('place_image','place_image.id_place','=','places.id')
            ->select('feedbacks.id as fid','places.id as pid','places.name as pname',
                'place_image.name as iname')
            ->where('places.id_type',$id)
            ->where('status',1)
            ->groupBY('places.id')
            ->orderBy('places.id','asc')
            ->get();
        return view('admin.pages.danh_gia.feedback',compact('notify_fb','danhGia'));
    }

    public function AdminChitietdanhgia($id){
        $diaDiem= Place::find($id);
        $tongdg= Feedback::where('id_place',$id)->count();
        $avg=Feedback::where('id_place',$id)->avg('star');

        $update_fb= Feedback::where('id_place',$id)
            ->update(['status'=>1]);
        $chitiet= Feedback::join('places','places.id','=','feedbacks.id_place')
            ->select('places.id as pid', 'feedbacks.id as fid','places.created_at as pcreated_at',
                'places.updated_at as pupdated_at','feedbacks.created_at as fcreated_at',
                'feedbacks.updated_at as fupdated_at','feedbacks.star as fstar')
            ->where('places.id',$id)
//            ->paginate(8);
        ->get();
        return view('admin.pages.danh_gia.detailfeedback',compact('update_fb','diaDiem','chitiet','tongdg','avg'));
    }

    public function AdminXoadanhgia($id)
    {
        $xoaDanhGia= Feedback::find($id);
        $xoaDanhGia->delete();
        return back();
    }
    public function AdminXoaDanhGiadachon(Request $request) {

        $id = $request->get('danh-gia-id');
        Feedback::destroy($id);
        return back();
    }
    public function AdminVitringuoidung(){
        $userLocation = User_Location::orderBy('id','asc')->get();
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
