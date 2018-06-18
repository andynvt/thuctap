<?php

namespace App\Http\Controllers;

use App\City;
use App\District;
use App\Feedback;
use App\Place_Location;
use App\Place_Type;
use App\Place_Image;
use App\Place;
use App\User_Location;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

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
        $name = Place::where('id', $id)->value('name');
        Place::destroy($id);
        return redirect()->back()->with('del-1', 'Đã xoá '.$name);
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

    public function AdminPostdiadiem(Request $req){
        $place = new Place();
        $place_location = new Place_Location();

        if($req->hasfile('images')){

            $place->name = $req->name;
            $place->id_type = $req->type;
            $place->id_district = $req->district;
            $place->slogan = $req->slogan;
            $place->map = $req->map;
            $place->address = $req->address;
            $place->short_des = $req->short_des;
            $place->full_des = $req->full_des;
            $place->save();

            $place_location->id_place = $place->id;
            $place_location->coor = $req->coor;
            $place_location->save();

            foreach($req->file('images') as $image){
                $namee=date('Y-m-d-H-i-s')."-".$image->getClientOriginalName();
                $image->move('storage/image', $namee);
                $img[] = $namee;
            }
            foreach($img as $i){
                Place_Image::insert( [
                    'id_place'=>$place->id,
                    'name'=>$i,
                ]);
            }
        }

        return redirect()->back()->with('add-place', 'Đã thêm: '.$req->name);
    }

    public function getThanhPho(Request $req){
        $id_city = $req->id;
//        $district = District::where('id_city', $id_city)->get();

        return json_encode($id_city);
    }

    public function AdminSuadiadiem($id){
        $info = Place::leftjoin('place_image', 'places.id', '=', 'place_image.id_place')
            ->leftjoin('place_type', 'places.id_type', '=', 'place_type.id')
            ->leftjoin('districts', 'districts.id', '=', 'places.id_district')
            ->leftjoin('cities', 'cities.id', '=', 'districts.id_city')
            ->leftjoin('place_location', 'places.id', '=', 'place_location.id_place')
            ->select('places.*', 'place_image.name as piname','place_type.name as ptname' ,'districts.id as did', 'cities.id as cid','place_location.coor')
            ->where('places.id', $id)
            ->groupBy('places.id')
            ->get();
        $place_type = Place_Type::all();
        $id_type = Place::where('id',$id)->value('id_type');
        $type_name = Place_Type::where('id', $id_type)->value('name');

        $district = District::all();
        $id_district = Place::where('id',$id)->value('id_district');
        $dname = District::where('id', $id_district)->value('name');

        $city = City::all();
        $id_city = District::where('id',$id)->value('id_city');
        $cname = District::where('id', $id_city)->value('name');

        $img = Place_Image::leftjoin('places', 'places.id', '=', 'place_image.id_place')
            ->select('place_image.id', 'place_image.name')
            ->where('places.id',$id)
            ->get();

//        dd($img);
        return view('admin.pages.place.placeedit', compact('info','place_type','id_type','type_name','district','id_district','dname','city','id_city','cname','img'));
    }

    public function AjaxXoaimg(Request $req){
        $c = "chuoi";
//        $id = $req->iid;
//        $idimg = Place_Image::find($id);
//
//        Place_Image::find($idimg->id)->delete();
//        Storage::delete('app/public/image/'.$idimg->name);
//        unlink(storage_path('app/public/image/'.$idimg->name));

//        $req->session()->flash('deleleimg', 'Đã xoá ảnh');
//        return response()->json(['data' => $idimg->id]);
        return json_encode($c);
    }

    public function AdminPostedit(Request $req){


        return redirect()->back()->with('edit-place', 'Đã sửa: '.$req->name);
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
