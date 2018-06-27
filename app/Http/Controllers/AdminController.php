<?php

namespace App\Http\Controllers;

use App\City;
use App\District;
use App\Feedback;
use App\Place_Location;
use App\Place_Type;
use App\Place_Image;
use App\Place;
<<<<<<< HEAD
use App\User;
=======
use App\Travel;
>>>>>>> 02d6c842245b3f89163c6d184c7bc75d1551becc
use App\User_Location;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Collection;
use Illuminate\Support\Facades\Storage;
use App\Http\Controllers\Controller;

class AdminController extends Controller
{
    //Login

    public function __construct()
    {
        $this->middleware('auth:admin');
    }
    /**
     * show dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('admin');
    }


    public function AdminThongke(){
        //biểu đồ 1
        $sl_dl = DB::select(DB::raw('SELECT MONTH(travel.created_at) AS month,places.id_type,SUM(travel.quantity) AS sum FROM places,travel WHERE places.id = travel.id_place AND places.id_type = 1 GROUP BY month'));
        $sl_au = DB::select(DB::raw('SELECT MONTH(travel.created_at) AS month,places.id_type,SUM(travel.quantity) AS sum FROM places,travel WHERE places.id = travel.id_place AND places.id_type = 2 GROUP BY month'));
        $sl_ks = DB::select(DB::raw('SELECT MONTH(travel.created_at) AS month,places.id_type,SUM(travel.quantity) AS sum FROM places,travel WHERE places.id = travel.id_place AND places.id_type = 3 GROUP BY month'));

        $month_dl = $month_au = $month_ks = array();
        for ($i=1; $i<=12; $i++){
            foreach ($sl_dl as $s){
                if($s->month == $i){
                    $month_dl[$i] = $s->sum;
                    break;
                }
                else $month_dl[$i] = 0;
            }
            foreach ($sl_au as $s) {
                if ($s->month == $i) {
                    $month_au[$i] = $s->sum;
                    break;
                } else $month_au[$i] = 0;
            }
            foreach ($sl_ks as $s) {
                if ($s->month == $i) {
                    $month_ks[$i] = $s->sum;
                    break;
                } else $month_ks[$i] = 0;
            }

        }

        //biểu đồ 2
        $tk_dl = DB::select(DB::raw('SELECT places.id, places.name, month(travel.created_at) as month, quantity FROM places, travel WHERE places.id = travel.id_place AND places.id_type = 1'));
        $tk_au = DB::select(DB::raw('SELECT places.id, places.name, month(travel.created_at) as month, quantity FROM places, travel WHERE places.id = travel.id_place AND places.id_type = 2'));
        $tk_ks = DB::select(DB::raw('SELECT places.id, places.name, month(travel.created_at) as month, quantity FROM places, travel WHERE places.id = travel.id_place AND places.id_type = 3'));

        $cl_dl = collect($tk_dl);
        $cl_au = collect($tk_au);
        $cl_ks = collect($tk_ks);

        $gr1 = $cl_dl->groupBy('id');
        $gr2 = $cl_au->groupBy('id');
        $gr3 = $cl_ks->groupBy('id');
        $gr_dl = $gr1->values();
        $gr_au = $gr2->values();
        $gr_ks = $gr3->values();

        foreach ($gr_dl as $g){
            $g['color'] = '#'.mt_rand( 0, 0xFFFFFF );
        }
        foreach ($gr_au as $g) {
            $g['color'] = '#' . mt_rand(0, 0xFFFFFF);
        }
        foreach ($gr_ks as $g) {
            $g['color'] = '#' . mt_rand(0, 0xFFFFFF);
        }

        //cách 2
//        $ar_dl = DB::select(DB::raw('select id, name from places'));
//        $ar_tv = DB::select(DB::raw('select id_place, quantity, month(created_at) as month from travel'));
//$cl = collect($ar_dl);
//$cl2 = collect($ar_tv);
////        $ar_dl = Place::
        $m = array();
//        foreach ($ar_dl as $d){
////            $d['corlor'] = '#' . mt_rand(0, 0xFFFFFF);
//            foreach ($ar_tv as $t){
//                if($d->id == $t->id_place){
//                    for ($i=1; $i<=12; $i++){
//                        if($t->month = $i){
//                            $m[$i] = $t[$i]['quantity'];
//                            break;
//                        }
//                        else $m[$i] = 0;
//                    }
//                }
//
//            }
//
//        }
//

//        foreach ($tk_dl as $d){
//            for($i=1; $i<=12; $i++){
//                if($d->month == $i){
//
//                }
//            }
//        }
        $cl = collect([]);
        foreach ($gr_dl as $g){
            for($i=0; $i<count($g)-1; $i++){
                for ($j=1; $j<=12; $j++){
                    if($j == $g[$i]->month){
//                        $cl[$i]->push($g[$i]->quantity);
                        $m[$g[$i]->id][$j] = $g[$i]->quantity;
                    }
                    else{
                        $m[$g[$i]->id][$j] = 0;
                    }

//                        $cl->push(0);
                }
//                print_r($m[$g[$i]->id]);
//                print_r('<br>');
            }

        }
//        dd($m);
//        dd($gr_dl);

        return view('admin.pages.statistics', compact('month_dl','month_au','month_ks','gr_dl','gr_au','gr_ks'));
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

        $idimg = Place_Image::where('id_place',$id)->get();
//        dd($idimg);
        foreach ($idimg as $i){
            Place_Image::find($i->id)->delete();
            Storage::delete('app/public/image/'.$i->name);
            unlink(storage_path('app/public/image/'.$i->name));
        }

        Place::destroy($id);

        return redirect()->back()->with('del-1', 'Đã xoá '.$name);
    }

    public function AdminXoaNhieuDiadiem(Request $req){
        $ids = $req->get('placeid');
        foreach ($ids as $i){
            $img[$i] = Place_Image::where('id_place',$i)->get();
        }
        foreach ($img as $im) {
            foreach ($im as $i) {
//                dd($i->name);
                Place_Image::find($i->id)->delete();
                Storage::delete('app/public/image/'.$i->name);
                unlink(storage_path('app/public/image/'.$i->name));
            }
        }

        Place::destroy($ids);
        return redirect()->back()->with('del-1', 'Đã xoá !');
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
        $distr = District::where('id_city', $id_city)->get();
        return json_encode($distr);
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
        $id_city = District::where('id',$id_district)->value('id_city');
        $cname = City::where('id', $id_city)->value('name');

        $d_of_c = District::where('id_city',$id_city)->get();

        $img = Place_Image::leftjoin('places', 'places.id', '=', 'place_image.id_place')
            ->select('place_image.id', 'place_image.name')
            ->where('places.id',$id)
            ->get();

//        dd($cname);
        return view('admin.pages.place.placeedit', compact('info','place_type','id_type','type_name','district','id_district','dname','city','id_city','cname','img','d_of_c'));
    }

    public function AjaxXoaimg(Request $req){
        $idimg = Place_Image::find($req->iid);

        Place_Image::find($idimg->id)->delete();
        Storage::delete('app/public/image/'.$idimg->name);
        unlink(storage_path('app/public/image/'.$idimg->name));

        $req->session()->flash('deleleimg', 'Đã xoá ảnh');
        return response()->json(['data' => $idimg->id]);
        return json_encode($idimg);
    }

    public function AdminPostedit($id, Request $req){
        $place = Place::find($id);

        Place::where('id',$id)->update([
            'name'=>$req->name,
            'slogan'=>$req->slogan,
            'id_type'=>$req->type,
            'map'=>$req->map,
            'address'=>$req->address,
            'id_district'=>$req->district,
            'short_des'=>$req->short_des,
            'full_des'=>$req->full_des,
        ]);

        Place_Location::where('id_place',$id)->update([
            'coor'=>$req->coor,
        ]);

        if($req->hasfile('images')){
            foreach($req->file('images') as $image){
                $namee=date('Y-m-d-H-i-s')."-".$image->getClientOriginalName();
                $image->move('storage/image', $namee);
                $img[] = $namee;
            }
            foreach($img as $i){
                Place_Image::insert( [
                    'id_place'=>$id,
                    'name'=>$i,
                ]);
            }
        }



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
        return back()->with('success', "Cập nhật thành công!");
    }
    public function AdminXoaLoaidiadiem($id){

        $xoaLoai= Place_Type::find($id);
        $xoaLoai->delete();
        return back()->with('success', "Dữ liệu đã được thành công!");
    }
    public function AdminXoaLoaidiadiemdachon(Request $request) {

        $id = $request->get('loai-dia-diem-id');
        Place_Type::destroy($id);
        return back()->with('success', "Dữ liệu đã được xóa thành công!");
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
        return back()->with('success', "Dữ liệu đã được xóa thành công!");
    }
    public function AdminXoaDanhGiadachon(Request $request) {

        $id = $request->get('danh-gia-id');
        Feedback::destroy($id);
        return back()->with('success', "Dữ liệu đã được xóa thành công!");
    }
    public function AdminVitringuoidung(){
        $userLocation = User_Location::orderBy('id','asc')->get();
        return view('admin.pages.vi_tri_nguoi_dung.index',compact('userLocation'));
    }

    public function AdminXoavitringuoidung($ids)
    {
        $xoaViTri = User_Location::find($ids);
        $xoaViTri->delete();
        return back()->with('success', "Dữ liệu đã được xóa thành công!");
    }
    public function AdminXoavitringuoidungdachon(Request $request ) {
        $ids = $request->get('vi-tri-id');
        User_Location::destroy($ids);
//        session()->flash('success','adadad');
        return back()->with('success','Dữ liệu đã được xóa thành công!');
    }
    public function AdminChangePassword(Request $request)
    {
        $validatedData = $request->validate([
            'oldpass' => 'required|min:6',
            'password' => 'required|string|min:6',
            'password_confirmation' => 'required|same:password',
        ],[
            'oldpass.required' => 'Mật khẩu không đúng. Vui lòng nhập lại!',
            'oldpass.min' => 'Mật khẩu ít nhất 6 ký tự',
            'password.required' => 'Yêu cầu nhập mật khẩu',
            'password.min' => 'Mật khẩu ít nhất 6 ký tự',
            'password_confirmation.required' => 'Mật khẩu không trùng khớp!'
        ]);

        $current_password = \Auth::User()->password;
        if(\Hash::check($request->input('oldpass'), $current_password))
        {
            $user_id = \Auth::User()->id;
            $obj_user = User::find($user_id);
            $obj_user->password = \Hash::make($request->input('password'));
            $obj_user->save();
            session()->flash('success','Thao tác thành công!');
            return redirect()->route('admin.logout')->with('success','Thao tác thành công!');
        }
        else
        {
            return back()->with('Thao tác thất bại!');
        }

    }
}
