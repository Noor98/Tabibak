<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use DB;
use Session;
use App\Category;
use App\Slider;
use App\Http\Requests\SliderRequest;

class SliderController extends BaseController
{
    public function index()
    {
        $q=request()["q"];
        $status=request()["status"];
        $items = Slider::whereRaw(" isdelete=0 ");
        if($q!=NULL)
            $items->whereRaw("(Title like ?)",["%$q%"]);		
        if($status!=NULL)
            $items->whereRaw("status = ?",[$status]);
        $items = $items->paginate(10)->appends(["q"=>$q,"status"=>$status]);
        return view("admin.slider.index",compact("items","q","status"));
    }

    public function create()
    {
        return view("admin.slider.create");
    }

    public function store(SliderRequest $request)
    {
        $path = $request->file('Image')->store('public/images');
        $item = new Slider();
        $item->Title = $request["Title"];
		$item->summary = $request["summary"];
		$item->Url = $request["Url"];
		$item->Image = basename($path);
        $item->status = $request["status"]?1:0;
        $item->created_by = $this->adminId;
        $item->save();
        
        Session::flash("msg","s: تمت عملية الاضافة بنجاح");
        
        return redirect("/admin/slider/create");
    }

    public function edit($id)
    {
        $item = Slider::find($id);
        $Image=Slider::select('Image')->where('id', $id)->get();
        if($item == NULL || $item->isdelete){
            Session::flash("msg","e: الرجاء التأكد من الرابط المطلوب");
            return redirect("/admin/slider");
        }
        return view("admin.slider.edit",compact("item","Image"));
    }

    public function update(SliderRequest $request, $id)
    {
        $path = $request->file('Image')->store('public/images');
        $item = Slider::find($id);
        $item->Title = $request["Title"];
		$item->Url = $request["Url"];
		$item->summary = $request["summary"];
		$item->Image = basename($path);
        $item->status = $request["status"]?1:0;
        $item->updated_by = $this->adminId;
        $item->save();
        
        Session::flash("msg","i: تمت عملية الحفظ بنجاح");
        
        return redirect("/admin/slider");
    }
     public function status($id)
    {
        $item = Slider::find($id);
        if($item == NULL || $item->isdelete){     
            return response()->json([
                'status' => '0',
                'msg' => 'لم تتم العملية'
            ]);
        }
        $item->status = !$item->status;  
        $item->save();
        return response()->json([
            'status' => '1',
            'msg' => 'تمت العملية بنجاح'
        ]);
    }
    public function destroy($id)
    {
         $item = Slider::find($id);
         $item->isdelete=1;
         $item->updated_by=$this->adminId;
         $item->save();
        
         Session::flash("msg","w: تمت عملية الحذف بنجاح");
        
         return redirect("/admin/slider");
    }
}