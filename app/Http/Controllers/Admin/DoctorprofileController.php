<?php

namespace App\Http\Controllers\Admin;
use Illuminate\Http\Request;
use DB;
use Session;
use App\Specialization;
use App\Doctorprofile;
use App\Comment;
use App\Http\Requests\DoctorprofileRequest;
class DoctorprofileController extends BaseController
{
    public function index()
    {
        $q=request()["q"];
		$specialized_at=request()["specialized_at"];
        $status=request()["status"];
        $items = Doctorprofile::whereRaw(" isdelete=0 ");
        if($q!=NULL)
            $items->whereRaw("(Name like ?)",["%$q%"]);
		if($specialized_at!=NULL)
            $items->whereRaw("specialized_at = ?",[$specialized_at]);
        if($status!=NULL)
            $items->whereRaw("status = ?",[$status]);
        $items = $items->paginate(10)->appends(["q"=>$q,"specialized_at"=>$specialized_at,"status"=>$status]);
		$specializations = specialization::all();
        //dd($specializations);
        return view("admin.Doctorprofile.index",compact("items","specializations","q","specialized_at","status"));
    }

    public function create()
    {
		$specializations = specialization::all();
        return view("admin.Doctorprofile.create",compact("specializations"));
        
    }

    public function store(DoctorprofileRequest $request)
    {
        $path = $request->file('Image')->store('public/images');
        $item = new Doctorprofile();
        $item->Name = $request["Name"];
		$item->summary = $request["summary"];
		$item->specialized_at = $request["specialized_at"];
		$item->Image = basename($path);
		$item->allowcomment = $request["allowcomment"]?1:0;
        $item->status = $request["status"]?1:0;
        $item->created_by = $this->adminId;
        $item->updated_by = $this->adminId;
        $item->save();
        Session::flash("msg","s: تمت عملية الاضافة بنجاح");
        return redirect("/admin/doctorprofile/create");
    }

    public function edit($id)
    {
        $item = Doctorprofile::find($id);
        $Image=Doctorprofile::select('Image')->where('id', $id)->get();
        //dd($Image);
        if($item == NULL || $item->isdelete){
            Session::flash("msg","e: الرجاء التأكد من الرابط المطلوب");
            return redirect("/admin/doctorprofile");
        }
		$specializations = Specialization::all();
        return view("admin.Doctorprofile.edit",compact("item","specializations","Image"));
    }
    public function status($id)
    {
        $item = Doctorprofile::find($id);
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
    public function allowComment($id)
    {
        $item = Doctorprofile::find($id);
        if($item == NULL || $item->isdelete){     
            return response()->json([
                'status' => '0',
                'msg' => 'لم تتم العملية'
            ]);
        }
        $item->allowComment = !$item->allowComment;  
        $item->save();
        return response()->json([
            'status' => '1',
            'msg' => 'تمت العملية بنجاح'
        ]);
    }

    public function update(DoctorprofileRequest $request, $id)
    {
        $item = Doctorprofile::find($id);
        $path = $request->file('Image')->store('public/images');
        $item->Name = $request["Name"];
		$item->summary = $request["summary"];
		$item->specialized_at = $request["specialized_at"];
		$item->Image = basename($path);
		$item->allowcomment = $request["allowcomment"]?1:0;
        $item->status = $request["status"]?1:0;
        $item->updated_by = $this->adminId;
        $item->save();
        Session::flash("msg","i: تمت عملية الحفظ بنجاح");
        return redirect("/admin/doctorprofile");
    }
    
    
    public function destroy($id)
    {
         $item = Doctorprofile::find($id);
       $items=comment::find($id)->where('Doctor_id', $id)->get();
       foreach ($items as $a){
        $a->isdelete=1;
        $a->save();}

//dd($items);
         $item->isdelete=1;
         $item->updated_by=$this->adminId;
         $item->save();
         Session::flash("msg","w: تمت عملية الحذف بنجاح");
        
         return redirect("/admin/doctorprofile");
    }
    
}