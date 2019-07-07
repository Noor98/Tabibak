@extends("admin._layout")

@section("title")
تعديل شريحة
@endsection


@section("content")
<form action="/admin/slider/{{$item->id}}" enctype="multipart/form-data" method="post" class="form-horizontal">
    {{csrf_field()}}
    <input type="hidden" name="_method" value="put" />
  <div class="form-group">
    <label for="Title" class="col-sm-2 control-label">عنوان الشريحة </label>
    <div class="col-sm-10 col-md-5">
      <input autofocus type="text" class="form-control" value="{{$item->Title}}" id="Title" name="Title" placeholder="ادخل عنوان الشريحة">
    </div>
  </div>
    <div class="form-group">
    <label for="Url" class="col-sm-2 control-label">الرابط </label>
    <div class="col-sm-10 col-md-5">
      <input type="text" class="form-control" value="{{$item->Url}}" id="Url" name="Url" placeholder="ادخل الرابط">
    </div>
  </div>
  <div class="form-group">
    <label for="summary" class="col-sm-2 control-label">ملخص الشريحة </label>
    <div class="col-sm-10 col-md-10">
        <textarea  id="summary" rows="3" name="summary" placeholder="ادخل ملخص الشريحة" class="form-control">{{$item->summary}}</textarea>
    </div>
  </div>
<div class="form-group">
    <label for="Image" class="col-sm-2 control-label">صورة الطبيب </label>
    <div class="col-md-9">
     <div  class="fileinput fileinput-new" data-provides="fileinput" >
       <div class="fileinput-preview thumbnail" data-trigger="fileinput" style="width: 200px; height: 150px; line-height: 150px;">
          
           <img src="/storage/images/{{substr($Image,11,45)}}"/>
                  

         </div>
         
       <div>
              <input type="hidden"><input type="file" name="Image"> 
                 </div>
            </div>
                </div>
  
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <div class="checkbox">
        <label>
          <input {{$item->status?"checked":""}} name="status" type="checkbox"> فعال
        </label>
      </div>
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-primary">حفظ</button>
        <a href="/admin/slider" class="btn btn-default">الغاء الامر</a>
    </div>
  </div>
</form>
@endsection