<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Comment extends Model
{
    protected $table = "comment";
    
	public function Doctorprofile(){
        return $this->belongsTo('App\Doctorprofile','Doctor_id','id');
    }
    public function user(){
        return $this->belongsTo('App\User');
    }
}
 