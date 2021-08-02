<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Slider;
use App\Doctorprofile;
use App\Comment;
use App\Specialization;
use Auth;
use Session;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        //$this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $sliders = Slider::where("isdelete",0)->where("status",1)
            ->limit(15)->orderBy("created_at","desc")->get();
        $top4Articles = Doctorprofile::where("isdelete",0)->where("status",1)
            ->limit(4)->orderBy("created_at","desc")->get();
        return view('home.index',compact('sliders','top4Articles'));
    }
    public function doctors()
    {
        $q=request()["q"];
		$specialized_at=request()["specialized_at"];
        $items = Doctorprofile::whereRaw(" isdelete=0 and status=1 ");
        if($q!=NULL)
            $items->whereRaw("(Name like ?)",["%$q%"]);
		if($specialized_at!=NULL)
            $items->whereRaw("specialized_at = ?",[$specialized_at]);
        
        $items = $items->paginate(10)->appends(["q"=>$q,"specialized_at"=>$specialized_at]);
		$specializations = Specialization::all();
        return view("home.doctors",compact("items","specializations","q","specialized_at"));
    }
    public function doctor($id)
    {
        $doctor = Doctorprofile::find($id);
        if($doctor==NULL || !$doctor->status || $doctor->isdelete)
            return redirect('/');
        return view('home.doctor',compact('doctor'));
    }
    
    public function postcomment($id,Request $request)
    {
        //dd($id);
        $request->validate([
            'Content' => 'required|max:255'
        ]);
        $comment= new Comment();
        $comment->Content=$request["Content"];
        $comment->Doctor_id=$id;
        $comment->user_id=Auth::user()->id;
        $comment->status=1;
        $comment->save();
        
        
        Session::flash("msg","s: تمت عملية الاضافة بنجاح");
        return redirect("/home/doctor/$id");
    }

    public function new()
    {
        $sliders = Slider::where("isdelete",0)->where("status",1)
            ->limit(15)->orderBy("created_at","desc")->get();
        $top4Articles = Doctorprofile::where("isdelete",0)->where("status",1)
            ->limit(4)->orderBy("created_at","desc")->get();
        
        return view('new',compact('sliders','top4Articles'));
    }
}
