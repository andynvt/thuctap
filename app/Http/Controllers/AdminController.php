<?php

namespace App\Http\Controllers;

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
    public function AdminXoaLoaidiadiemdachon(Request $request) {
        $ids = $request->get('loai-dia-diem-id');

        if (empty($ids))
            return back();

        $errors = $this->canDelete($ids);

        if (!empty($errors))
            return back()->with('errors', $errors);

        NhaCungCap::destroy($ids);

        return back()->with('success', 'Xóa thành công');
    }

    private function canDelete($ids) {
        $errors = [];

        foreach ($ids as $id) {
            $loaidiadiem = Place_Type::findOrFail($id);

            if ($loaidiadiem->khongCoDiaDiem())
                continue;

            $errors[] = "Vẫn còn địa điểm của loại địa điểm " . $loaidiadiem->name;
        }

        return $errors;
    }

    public function AdminDanhgia(){
        return view('admin.pages.feedback');
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
}
