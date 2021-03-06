<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Feedback extends Model
{
    protected $table = "feedbacks";
    public $timestamps = false;
    
    public function places(){
    	return $this->belongsTo('App\Place','id_place','id');
    }
}
