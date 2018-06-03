<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Place_Type extends Model
{
    protected $table = "place_type";
    public $timestamps = false;
    public function places(){
    	return $this->hasMany('App\Place','id_type','id');
    }
    public function khongCoDiaDiem() {
        return $this->isEmpty();
    }
    
}
