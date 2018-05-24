<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Place_Type extends Model
{
    protected $table = "place_type";

    public function places(){
    	return $this->hasMany('App\Place','id_type','id');
    }
    
}
