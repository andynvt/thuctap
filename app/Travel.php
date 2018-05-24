<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Travel extends Model
{
    protected $table = "travel";

    public function places(){
    	return $this->belongsTo('App\Place','id_place','id');
    }
}
