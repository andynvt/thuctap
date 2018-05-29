<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class City extends Model
{
    protected $table = "cities";



    public function place_type(){
    	return $this->hasManyThrough('App\Place_Type','App\Place');
    }

    public function travel(){
    	return $this->hasManyThrough('App\Travel','App\Place');
    }
}
