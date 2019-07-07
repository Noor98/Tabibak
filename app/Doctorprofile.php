<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Doctorprofile extends Model
{
    protected $table = "doctor_profile";
    
	public function specialization(){
        return $this->belongsTo('App\Specialization','specialized_at','id');
    }
        public function comments(){
        return $this->hasMany('App\Comment','Doctor_id','id');
    }
    
}
