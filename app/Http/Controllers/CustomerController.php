<?php

namespace App\Http\Controllers;

use App\Place;
use App\Place_Image;
use App\Feedback;
use App\Place_Type;
use App\Place_Location;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Console\Scheduling\Schedule;
use Illuminate\Support\Collection;
use Session;

class CustomerController extends Controller
{
    public function CustomerListplace(Request $request,$id)
    {
//       view list places
        $title_place= Place_Type::find($id);
        $title_place->get();
        $result_lp = Place::leftjoin('place_image', 'places.id', '=', 'place_image.id_place')
            ->join('feedbacks','feedbacks.id_place','=','places.id')
            ->select('places.id as pid', 'places.name as pname', 'places.short_des', 'places.name',
                'place_image.id as piimg', 'place_image.name as piname','feedbacks.id as fid')
            ->where('places.id_type', $id)
            ->groupBy('places.id')
            ->paginate(10);
//       view top places interesting
        $result_top = Place::leftjoin('place_image', 'places.id', '=', 'place_image.id_place')
            ->leftjoin('feedbacks', 'places.id', '=', 'feedbacks.id_place')
            ->select('places.id as pid', 'places.name as pname', 'places.short_des', 'places.name', 'place_image.id as piimg', 'place_image.name as piname')
            ->where('places.id_type', $id)
            ->groupBy('places.id')
            ->orderBy('feedbacks.star', 'desc')
            ->limit(5)
            ->get();
        return view('customer.pages.listplace', compact('types','result_lp', 'title_place','result_top','sum_fb','avg_fb'));
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

        $cntplace = count($plocate);

        for($i = 0; $i < $cntplace; $i++){
            $coords = explode(',', $plocate[$i]->coor);
            $dist = $getdist->GetDrivingDistance($plocate[$i]->id, $latitude, $longitude, $coords[0], $coords[1]);

            $collection->push($dist);
        }

        $sorted = $collection->sortBy('distance');

        $intro = $sorted->values()->take(3);

        $cntintro = $intro->count();

        for($i = 0; $i < $cntintro; $i++){
            $pintro = Place::leftjoin('place_type as pt', 'places.id_type', '=', 'pt.id')
                    ->leftjoin('place_image as pimg', 'pimg.id_place', '=', 'places.id')
                    ->leftjoin('districts as dt', 'places.id_district', '=', 'dt.id')
                    ->where('places.id', $intro[$i]['id'])
                    ->groupBy('places.id')
                    ->select('places.id as id', 'places.name as pname', 'places.short_des', 'places.address', 'pimg.name as pimage', 'pt.name as ptname')
                    ->get();
            $viewIntro->push($pintro);
        }

        $flattened = $viewIntro->flatten(1);

        $cntflattened = $flattened->count();

        $final = collect([]);

        for($i = 0; $i < $cntflattened; $i++){
            $flattened[$i]['dist'] = $intro[$i]['distance'];
            $flattened[$i]['time'] = $intro[$i]['time'];
            $final->push($flattened[$i]);
        }

        return json_encode($final);
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

//        dd($khachsan);

        return view('customer.pages.detailplace', compact('places','image','no_of_fb','avg_fb','floor_fb','same_place','dulich','anuong','khachsan','id_type'));
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


