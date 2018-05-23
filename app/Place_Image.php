<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Place_Image extends Model
{
    protected $table = "place_image";

    public function places(){
    	return $this->belongsTo('App\Place','id_place','id');
    }
    
}
