<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Specialization extends Model
{
    protected $table = "specialization";
    
    public function Doctorprofile(){
        return $this->hasMany("App\Doctorprofile","specialized_at","id");
    }  
}
