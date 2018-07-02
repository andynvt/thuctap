<?php

namespace App\Http\Controllers;

use App\City;
use App\Place;
use App\Place_Image;
use App\Feedback;
use App\Place_Type;
use App\Place_Location;
use App\Travel;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Console\Scheduling\Schedule;
use Illuminate\Support\Collection;
use Session;
use DB;

class CustomerController extends Controller
{
    public function CustomerListplace(Request $request,$id,$ids)
    {
        $title_city = City::find($id);
        $title_city->get();
        $title_placeType = Place_Type::find($ids);
        $title_placeType->get();
        $result_dl = Place::leftjoin('place_image', 'places.id', '=', 'place_image.id_place')
            ->join('feedbacks','feedbacks.id_place','=','places.id')
            -> join('districts','districts.id','=','places.id_district')
            -> join('cities','cities.id','=','districts.id_city')
            ->select('places.id as pid', 'places.name as pname', 'places.short_des', 'places.name',
                'place_image.id as piimg', 'place_image.name as piname','feedbacks.id as fid')
            ->where([
                ['cities.id', $id],
                ['places.id_type',$ids]
            ])
            ->groupBy('places.id')
            ->paginate(10);
        $total = $result_dl->count();
        //       view top places interesting
        $result_top = Place::leftjoin('place_image', 'places.id', '=', 'place_image.id_place')
            ->leftjoin('feedbacks', 'places.id', '=', 'feedbacks.id_place')
            -> join('districts','districts.id','=','places.id_district')
            -> join('cities','cities.id','=','districts.id_city')
            ->select('places.id as pid', 'places.name as pname', 'places.short_des', 'places.name', 'place_image.id as piimg', 'place_image.name as piname')
            ->where([
                ['cities.id', $id]
            ])
            ->groupBy('places.id')
            ->orderBy('feedbacks.star', 'desc')
            ->limit(5)
            ->get();
        $bg_img = Place::leftjoin('place_image', 'places.id', '=', 'place_image.id_place')
            ->leftjoin('feedbacks', 'places.id', '=', 'feedbacks.id_place')
            -> join('districts','districts.id','=','places.id_district')
            -> join('cities','cities.id','=','districts.id_city')
            ->select('places.id as pid', 'places.name as pname', 'places.short_des',
                'places.name', 'place_image.id as piimg', 'place_image.name as piname')
            ->where([
                ['cities.id', $id]
            ])
            ->groupBy('places.id')
            ->orderBy('feedbacks.star', 'desc')
            ->limit(1)
            ->get();
        return view('customer.pages.listplace',
            compact('id','total','bg_img','result_dl','title_placeType', 'title_city','result_top'));
    }
    public function CustomerListplaceFavorite()
    {
//        view favorite place
        $result_favorite= Place::leftjoin('place_image', 'places.id', '=', 'place_image.id_place')
            ->join('feedbacks','feedbacks.id_place','=','places.id')
            ->select('places.id as pid', 'places.name as pname', 'places.short_des', 'places.name',
                'place_image.id as piimg', 'place_image.name as piname','feedbacks.id as fid')
            ->groupBy('places.id')
            ->orderBy('feedbacks.star', 'desc')
            ->paginate(10);
        $result_top_fav = Place::leftjoin('place_image', 'places.id', '=', 'place_image.id_place')
            ->leftjoin('feedbacks', 'places.id', '=', 'feedbacks.id_place')
            ->select('places.id as pid', 'places.name as pname', 'places.short_des', 'places.name', 'place_image.id as piimg', 'place_image.name as piname')
            ->groupBy('places.id')
            ->orderBy('feedbacks.star', 'desc')
            ->limit('5')
            ->get();
        return view('customer.pages.listplace_favorite', compact('result_favorite','result_top_fav'));
    }
    public function CustomerListplaceSearch(Request $request)
    {
        $keyWord= $request->input('data');
            $place= Place::join('place_image', 'places.id', '=', 'place_image.id_place')
                ->join('feedbacks','feedbacks.id_place','=','places.id')
                ->join('place_type','place_type.id','=','places.id_type')
                ->join('districts','districts.id','=','places.id_district')
                ->join('cities','cities.id','districts.id_city')
                ->select('place_image.id as mid','feedbacks.id as fid','places.id as pid','place_type.id as tid','districts.id as did',
                    'cities.id as cid','place_image.name as piname','places.name as pname','place_type.name as tname',
                    'districts.name as dname','cities.name as cname','short_des')
                ->where('places.name','like','%'.$keyWord.'%')
                ->orwhere('place_type.name','like','%'.$keyWord.'%')
                ->orwhere('districts.name','like','%'.$keyWord.'%')
                ->orwhere('cities.name','like','%'.$keyWord.'%')
                ->groupBy('places.id')
                ->paginate(10);
            $total = $place->count();
        $same_place= Place::join('place_image', 'places.id', '=', 'place_image.id_place')
            ->join('feedbacks','feedbacks.id_place','=','places.id')
            ->join('place_type','place_type.id','=','places.id_type')
            ->join('districts','districts.id','=','places.id_district')
            ->join('cities','cities.id','districts.id_city')
            ->select('place_image.id as mid','feedbacks.id as fid','places.id as pid','place_type.id as tid','districts.id as did',
                'cities.id as cid','place_image.name as piname','places.name as pname','place_type.name as tname',
                'districts.name as dname','cities.name as cname','short_des')
            ->where('places.name','like','%'.$keyWord.'%')
            ->orwhere('place_type.name','like','%'.$keyWord.'%')
            ->orwhere('districts.name','like','%'.$keyWord.'%')
            ->orwhere('cities.name','like','%'.$keyWord.'%')
            ->groupBy('places.id')
            ->orderBy('feedbacks.star','desc')
            ->limit(5)
            ->get();
        return view('customer.pages.resultSearch', compact('place','total','same_place'));
    }

    public function CustomerCaldis(Request $req){
        $getdist = new Controller;

        $latitude = $req->lati;
        $longitude = $req->longi;

        $plocate = Place_Location::all();

        $collection = collect([]);

        $viewIntro = collect([]);

        $imgPlace = collect([]);

        $fbIntro = collect([]);

        $cntplace = count($plocate);

        for($i = 0; $i < $cntplace; $i++){
            $coords = explode(', ', $plocate[$i]->coor);
            $dist = $getdist->GetDrivingDistance($plocate[$i]->id_place, $latitude, $longitude, $coords[0], $coords[1]);

            $collection->push($dist);
        }

        $sorted = $collection->sortBy('distance');

        for($i = 0; $i < count($sorted); $i++){
            $tid = $sorted[$i]["id"];
        
            $travel = DB::select(DB::raw('SELECT id_place, MAX(month(created_at)) as month from travel where id_place = '.$tid));

            $curmonth = DB::select(DB::raw('SELECT month(CURRENT_DATE()) as currentmonth'));

            if($sorted[$i]['distance'] <= 500){
                if($curmonth[0]->currentmonth == $travel[0]->month){
                    $upqty = Travel::where('id_place', $tid)->get();
                    $upqty[0]->quantity += 1;
                    $upqty[0]->save();
                }
                else{
                    $upquantity = new Travel;
                    $upquantity->quantity = 1;
                    $upquantity->id_place = $tid;
                    $upquantity->save();
                }
            }
        }

        $intro = $sorted->values()->take(4);

        $cntintro = $intro->count();

        for($i = 0; $i < $cntintro; $i++){
            $pintro = Place::leftjoin('place_type as pt', 'places.id_type', '=', 'pt.id')
                    ->leftjoin('place_image as pimg', 'pimg.id_place', '=', 'places.id')
                    ->leftjoin('districts as dt', 'places.id_district', '=', 'dt.id')
                    ->leftjoin('place_location as plo', 'places.id', '=', 'plo.id_place')
                    ->where('places.id', $intro[$i]['id'])
                    ->groupBy('places.id')
                    ->select('places.id as id', 'places.name as pname', 'places.short_des', 'places.address', 'pimg.name as pimage', 'pt.name as ptname', 'plo.coor as pcoord')
                    ->get();
            $viewIntro->push($pintro);

            // $fb = Feedback::where('id_place', $intro[$i]['id'])->avg('star');
            $fb = DB::select(DB::raw('SELECT id_place, COUNT(id_place) as cntfbp, AVG(star) as avgstar FROM feedbacks WHERE id_place = '.$intro[$i]["id"].' GROUP BY id_place'));
            $fbIntro->push($fb);

            $img = Place_Image::leftjoin('places as p', 'place_image.id_place', '=', 'p.id')
                            ->where('place_image.id_place', $intro[$i]['id'])
                            ->select('p.id', 'place_image.name as pimg')
                            ->get();
            $imgPlace->push($img);
        }

        $flattened = $viewIntro->flatten(1);

        $flattenfb = $fbIntro->flatten(1);

        $cntflattened = $flattened->count();

        $final = collect([]);

        for($i = 0; $i < $cntflattened; $i++){
            $flattened[$i]['dist'] = $intro[$i]['distance'];
            $flattened[$i]['time'] = $intro[$i]['time'];
            $flattened[$i]['avgstar'] = $flattenfb[$i]->avgstar;
            $flattened[$i]['cntfbp'] = $flattenfb[$i]->cntfbp;
            $final->push($flattened[$i]);
        }
        return json_encode([$final, $imgPlace]);
    }

    public function CustomerIntro(){
        return view('customer.pages.intro');
    }

    public function CustomerDetailplace($id){
        $places = Place::where('id',$id)->get();
        $image = Place_Image::where('id_place', $id)->get();
        $no_of_fb = Feedback::where('id_place', $id)->count();
        $avg_of_fb = Feedback::where('id_place', $id)->avg('star');
        $avg_fb = number_format((float)$avg_of_fb, 2, '.', '');
        $floor_fb = floor($avg_fb);

        $id_type = Place::where('id',$id)->value('id_type');
        $same_place = Place::join('place_image', 'places.id', '=', 'place_image.id_place')
            ->join('feedbacks', 'places.id', '=', 'feedbacks.id_place')
            ->select('places.*', 'place_image.name as piname')
            ->where([
                ['id_type', $id_type],
                ['places.id', '<>', $id]
            ])
            ->groupBy('places.id')
            ->orderBy('feedbacks.star', 'desc')
            ->limit('5')
            ->get();

        $dulich = Place::join('place_image', 'places.id', '=', 'place_image.id_place')
            ->join('feedbacks', 'places.id', '=', 'feedbacks.id_place')
            ->select('places.*', 'place_image.name as piname')
            ->where('id_type', 1)
            ->groupBy('places.id')
            ->orderBy('feedbacks.star', 'desc')
            ->limit('6')
            ->get();

        $anuong = Place::join('place_image', 'places.id', '=', 'place_image.id_place')
            ->join('feedbacks', 'places.id', '=', 'feedbacks.id_place')
            ->select('places.*', 'place_image.name as piname')
            ->where('id_type', 2)
            ->groupBy('places.id')
            ->orderBy('feedbacks.star', 'desc')
            ->limit('6')
            ->get();

        $khachsan = Place::join('place_image', 'places.id', '=', 'place_image.id_place')
            ->join('feedbacks', 'places.id', '=', 'feedbacks.id_place')
            ->select('places.*', 'place_image.name as piname')
            ->where('id_type', 3)
            ->groupBy('places.id')
            ->orderBy('feedbacks.star', 'desc')
            ->limit('6')
            ->get();

        $pl = Place::join('place_location', 'places.id', '=', 'place_location.id_place')
            ->select('places.id','places.id_type', 'place_location.coor')
            ->where('places.id', $id)
            ->get();

//        dd($pl);

        return view('customer.pages.detailplace', compact('places','image','no_of_fb','avg_fb','floor_fb','same_place','dulich','anuong','khachsan','id_type','pl'));
    }

    public function AjaxPlace(Request $req){
        $id = $req->id;
        $id_type = $req->id_type;
        $coor = $req->coor;
        $coords = explode(', ', $coor);

        $collect = collect([]);

        $getpl = new Controller();
        $places = Place::leftjoin('place_location', 'places.id', '=', 'place_location.id_place')
            ->leftjoin('place_image', 'places.id', '=', 'place_image.id_place')
            ->select('places.*','place_location.coor', 'place_image.name as piname')
            ->where('id_type', $id_type)
            ->groupBy('places.id')
            ->get();

        for ($i=0; $i<count($places); $i++){
            $co = explode(', ', $places[$i]->coor);
            $dis = $getpl->GetDrivingDistance($places[$i]->id, $coords[0], $coords[1], $co[0], $co[1]);
            $collect->push($dis);
        }

        $sorted = $collect->sortBy('distance');

        $detailpl = $sorted->values()->take(6);

        for ($i=0; $i<count($places); $i++){
            $places[$i]['dis'] = $detailpl[$i]['distance'];
        }

        $dl = Place::leftjoin('place_location', 'places.id', '=', 'place_location.id_place')
            ->leftjoin('place_image', 'places.id', '=', 'place_image.id_place')
            ->leftjoin('place_type', 'places.id_type', '=', 'place_type.id')
            ->select('places.*','place_location.coor', 'place_image.name as piname', 'place_type.name as ptname')
            ->where('id_type','<>', $id_type)
            ->groupBy('places.id', 'places.id_type')
            ->get();

        $collect_dl = collect([]);

        for ($i = 0; $i < count($dl); $i++) {
            $co = explode(', ', $dl[$i]->coor);
            $dist = $getpl->GetDrivingDistance($dl[$i]->id, $coords[0], $coords[1], $co[0], $co[1]);
            $collect_dl->push($dist);
        }

        for ($i=0; $i<count($dl); $i++){
            $dl[$i]['dis'] = $collect_dl[$i]['distance'];
        }

        $sorted_dl = $dl->sortBy('dis');

        $detail_dl = $sorted_dl->values();

        $gr = $detail_dl->groupBy('id_type');

        $grouped = $gr->values();

        return  json_encode([$places, $grouped]);
    }

    public function postDanhGia(Request $req){
        $id = $req->id;
        $star = $req->star;

        $fb = new Feedback();
        $fb->id_place = $id;
        $fb->star = $star;
        $fb->save();

        $no_of_fb1 = Feedback::where('id_place', $id)->count();
        $avg_of_fb = Feedback::where('id_place', $id)->avg('star');
        $avg_fb1 = number_format((float)$avg_of_fb, 2, '.', '');

        return json_encode([$no_of_fb1, $avg_fb1]);
//        return response()->json(['id' => $id, 'star' => $star, 'no_of_fb1' => $no_of_fb1, 'avg_fb1' => $avg_fb1]);
    }

}


