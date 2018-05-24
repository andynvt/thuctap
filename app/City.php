<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class City extends Model
{
    protected $table = "cities";

    public function places(){
    	return $this->hasMany('App\Place','id_city','id');
    }
}
