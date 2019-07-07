<?php
namespace App\Http\Controllers\Admin;
use Illuminate\Http\Request;
use DB;
use Session;
use App\Specialization;
use App\Doctorprofile;
use App\Http\Requests\specializationRequest;

class SpecializationController extends BaseController
{
    public function index()
    {
        $q=request()["q"];
        $status=request()["status"];
        $items = Specialization::whereRaw(" isdelete=0 ");
        if($q!=NULL)
            $items->whereRaw("(Name like ?)",["%$q%"]);
        if($status!=NULL)
            $items->whereRaw("status = ?",[$status]);
        $items = $items->paginate(10)->appends(["q"=>$q,"status"=>$status]);
        return view("admin.specialization.index",compact("items","q","status"));
    }
    public function create()
    {
        return view("admin.specialization.create");
    }
    public function store(SpecializationRequest $request)
    {
        $IsExists = Specialization::where("Name",$request["Name"])->where("isdelete",0)->count()>0;
        if($IsExists){
            Session::flash("msg","w: العنصر المنوي ادخاله موجود مسبقا");
            return redirect("/admin/specialization/create")->withInput();
        }
        $item = new Specialization();
        $item->Name = $request["Name"];
        $item->status = $request["status"]?1:0;
        $item->created_by = $this->adminId;
        $item->save();
        Session::flash("msg","s: تمت عملية الاضافة بنجاح");
        return redirect("/admin/specialization/create");
    }
    public function edit($id)
    {
        $item = Specialization::find($id);
        if($item == NULL || $item->isdelete){
            Session::flash("msg","e: الرجاء التأكد من الرابط المطلوب");
            return redirect("/admin/specialization");
        }
        return view("admin.specialization.edit",compact("item"));
    } 
    public function status($id)
    {
        $item = Specialization::find($id);
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
    public function update(SpecializationRequest $request, $id)
    {
        $IsExists = Specialization::where("Name",$request["Name"])
            ->where("isdelete",0)->where("id",'!=',$id)->count()>0;
        if($IsExists){
            Session::flash("msg","w: العنصر المنوي ادخاله موجود مسبقا");
            return redirect("/admin/specialization/$id/edit")->withInput();
        }
        $item = Specialization::find($id);
        $item->Name = $request["Name"];
        $item->status = $request["status"]?1:0;
        $item->updated_by = $this->adminId;
        $item->save();
        Session::flash("msg","i: تمت عملية الحفظ بنجاح");
        return redirect("/admin/specialization");
    }
    public function destroy($id)
    {
         $item = Specialization::find($id);
        $items=Doctorprofile::find($id)->where('specialized_at', $id)->get();
       foreach ($items as $a){
        $a->isdelete=1;
        $a->save();}
         $item->isdelete=1;
         $item->updated_by=$this->adminId;
         $item->save();
         Session::flash("msg","w: تمت عملية الحذف بنجاح");
         return redirect("/admin/specialization");
    }
}
