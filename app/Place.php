<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Place extends Model
{
    protected $table = "places";

    public function districts(){
    	return $this->belongsTo('App\District','id_district','id');
    }

    public function place_type(){
    	return $this->belongsTo('App\Place_Type','id_type','id');
    }

    public function place_image(){
    	return $this->hasMany('App\Place_Image','id_place','id');
    }

    public function feedbacks(){
    	return $this->hasMany('App\Feedback','id_place','id');
    }

    public function place_location(){
    	return $this->hasOne('App\Place_Location','id_place','id');
    }

    public function travel(){
    	return $this->hasOne('App\Travel','id_place','id');
    }
}
