<?php

namespace App\Http\Controllers;

use App\Place;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Console\Scheduling\Schedule;
use Session;
use DB;

class CustomerController extends Controller
{

	public function CustomerIntro(){
   		return view('customer.pages.intro');
   	}

   	public function CustomerListplace(){
   		$data = Place::leftjoin('place_image','places.id','=','place_image.id_place')
                    ->groupBy('places.id')
                    ->get();
       // dd($data);
   		return view('customer.pages.listplace');
   	}

   	public function CustomerDetailplace(){

   		return view('customer.pages.detailplace');
   	}
}

