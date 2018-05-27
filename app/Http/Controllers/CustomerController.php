<?php

namespace App\Http\Controllers;

use App\Place;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Console\Scheduling\Schedule;
use Session;
class CustomerController extends Controller
{
   public function CustomerListplace()
   {
//       view list places
       $result_lp= Place::leftjoin('place_image','places.id','=','place_image.id_place')
            ->select('places.id as pid','places.name as pname', 'places.short_des', 'places.name', 'place_image.id as piimg', 'place_image.name as piname')
            -> where('places.id_type','1')
            -> groupBy('places.id')
            -> limit('5')
            ->get();
//        view list eat drink
       $result_led= Place::leftjoin('place_image','places.id','=','place_image.id_place')
           ->select('places.id as pid','places.name as pname', 'places.short_des', 'places.name', 'place_image.id as piimg', 'place_image.name as piname')
           -> where('places.id_type','2')
           -> groupBy('places.id')
           -> limit('5')
           ->get();
//       view list hotel
       $result_lh= Place::leftjoin('place_image','places.id','=','place_image.id_place')
           ->select('places.id as pid','places.name as pname', 'places.short_des', 'places.name', 'place_image.id as piimg', 'place_image.name as piname')
           -> where('places.id_type','3')
           -> groupBy('places.id')
           -> limit('5')
           ->get();

//       view top places interesting
       $result_top= Place::leftjoin('place_image','places.id','=','place_image.id_place')
           ->leftjoin('feedbacks','places.id','=','feedbacks.id_place')
           ->select('places.id as pid','places.name as pname', 'places.short_des', 'places.name', 'place_image.id as piimg', 'place_image.name as piname')
           -> where('places.id_type','1')
           -> groupBy('places.id')
           -> orderBy('feedbacks.star','desc')
           -> limit('5')
           ->get();
   		return view('customer.pages.listplace', compact('result_lp','result_led','result_lh','result_top'));
   }

   public function CustomerDetailplace()
   {

   		return view('customer.pages.detailplace');
   }
}

