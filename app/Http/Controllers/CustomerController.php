<?php

namespace App\Http\Controllers;

use App\Place;
use App\Place_Image;
use App\Feedback;
use App\Place_Type;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Console\Scheduling\Schedule;
use Session;

class CustomerController extends Controller
{
    public function CustomerListplace()
    {
//       view list places
        $result_lp = Place::leftjoin('place_image', 'places.id', '=', 'place_image.id_place')
            ->select('places.id as pid', 'places.name as pname', 'places.short_des', 'places.name', 'place_image.id as piimg', 'place_image.name as piname')
            ->where('places.id_type', '1')
            ->groupBy('places.id')
            ->limit('5')
            ->get();
//        view list eat drink
        $result_led = Place::leftjoin('place_image', 'places.id', '=', 'place_image.id_place')
            ->select('places.id as pid', 'places.name as pname', 'places.short_des', 'places.name', 'place_image.id as piimg', 'place_image.name as piname')
            ->where('places.id_type', '2')
            ->groupBy('places.id')
            ->limit('5')
            ->get();
//       view list hotel
        $result_lh = Place::leftjoin('place_image', 'places.id', '=', 'place_image.id_place')
            ->select('places.id as pid', 'places.name as pname', 'places.short_des', 'places.name', 'place_image.id as piimg', 'place_image.name as piname')
            ->where('places.id_type', '3')
            ->groupBy('places.id')
            ->limit('5')
            ->get();

//       view top places interesting
        $result_top = Place::leftjoin('place_image', 'places.id', '=', 'place_image.id_place')
            ->leftjoin('feedbacks', 'places.id', '=', 'feedbacks.id_place')
            ->select('places.id as pid', 'places.name as pname', 'places.short_des', 'places.name', 'place_image.id as piimg', 'place_image.name as piname')
            ->where('places.id_type', '1')
            ->groupBy('places.id')
            ->orderBy('feedbacks.star', 'desc')
            ->limit('5')
            ->get();
        return view('customer.pages.listplace', compact('result_lp', 'result_led', 'result_lh', 'result_top'));
    }

    public function CustomerCaldis(Request $req){
        function distance($lat1, $lon1, $lat2, $lon2, $unit) {

            $theta = $lon1 - $lon2;
            $dist = sin(deg2rad($lat1)) * sin(deg2rad($lat2)) +  cos(deg2rad($lat1)) * cos(deg2rad($lat2)) * cos(deg2rad($theta));
            $dist = acos($dist);
            $dist = rad2deg($dist);
            $miles = $dist * 60 * 1.1515;
            $unit = strtoupper($unit);

            if ($unit == "K") {
                return ($miles * 1.609344);
            } else if ($unit == "N") {
                return ($miles * 0.8684);
            } else {
                return $miles;
            }
        }

        $latitude = $req->lati;
        $longitude = $req->longi;

        echo distance($latitude, $longitude, 10.0411439,105.7844303, 'K');

        dd($req->lati);
    }

    public function CustomerIntro(){
        $intro = Place::leftjoin('place_type as pt', 'places.id_type', '=', 'pt.id')
                    ->leftjoin('place_image as pimg', 'pimg.id_place', '=', 'places.id')
                    ->leftjoin('districts as dt', 'places.id_district', '=', 'dt.id')
                    ->where('dt.id_city', 3)
                    ->groupBy('places.id')
                    ->select('places.id as pid', 'places.name as pname', 'places.short_des', 'places.address', 'places.map', 'pimg.name as pimage', 'pt.name as ptname')
                    ->get();

        return view('customer.pages.intro', compact('intro'));
    }

    public function CustomerDetailplace($id){
        $places = Place::where('id',$id)->get();
        $image = Place_Image::where('id_place', $id)->get();
        $no_of_fb = Feedback::where('id_place', $id)->count();
        $avg_of_fb = Feedback::where('id_place', $id)->avg('star');
        $avg_fb = number_format((float)$avg_of_fb, 2, '.', '');

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

        return view('customer.pages.detailplace', compact('places','image','no_of_fb','avg_fb','same_place','dulich','anuong','khachsan','id_type'));
    }

}


