<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Place_Location extends Model
{
    protected $table = "place_location";

    public function places(){
    	return $this->belongsTo('App\Place','id_place','id');
    }
    
}
