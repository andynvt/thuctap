<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class CustomerController extends Controller
{
   public function CustomerListplace()
   {
   		return view('customer.pages.listplace');
   }

   public function CustomerDetailplace()
   {
   		return view('customer.pages.detailplace');
   }
}

