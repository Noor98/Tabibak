@extends("admin._layout")

@section("title")
اضافة شريحة جديد

@endsection


@section("content")
<form action="/admin/slider" enctype="multipart/form-data" method="post" class="form-horizontal">
    {{csrf_field()}}
  <div class="form-group">
    <label for="Title" class="col-sm-2 control-label">عنوان الشريحة </label>
    <div class="col-sm-10 col-md-5">
      <input autofocus type="text" class="form-control" value="{{old('Title')}}" id="Title" name="Title" placeholder="ادخل عنوان الشريحة">
    </div>
  </div>
    <div class="form-group">
    <label for="Url" class="col-sm-2 control-label">الرابط </label>
    <div class="col-sm-10 col-md-5">
      <input type="text" class="form-control" value="{{old('Url')}}" id="Url" name="Url" placeholder="ادخل الرابط">
    </div>
  </div>
  <div class="form-group">
    <label for="summary" class="col-sm-2 control-label">ملخص الشريحة </label>
    <div class="col-sm-10 col-md-10">
        <textarea  id="summary" rows="3" name="summary" placeholder="ادخل ملخص الشريحة" class="form-control">{{old('summary')}}</textarea>
    </div>
  </div>
<div class="form-group">
    <label for="Image" class="col-sm-2 control-label">صورة الشريحة </label>
    <div class="col-sm-10 col-md-5">
      <input type="file" name="Image"  />
    </div>
  </div> 
  
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <div class="checkbox">
        <label>
          <input {{old('status')?"checked":""}} name="status" type="checkbox"> فعال
        </label>
      </div>
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-primary">اضافة</button>
        <a href="/admin/slider" class="btn btn-default">الغاء الامر</a>
    </div>
  </div>
</form>
@endsection

