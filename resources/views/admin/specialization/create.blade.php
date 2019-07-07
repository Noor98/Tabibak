@extends("admin._layout")

@section("title")
اضافة تخصص جديد
@endsection

@section("content")
<form action="/admin/specialization" method="post" class="form-horizontal">
    {{csrf_field()}}
  <div class="form-group">
    <label for="Name" class="col-sm-2 control-label">اسم التخصص</label>
    <div class="col-sm-10 col-md-5">
      <input autofocus type="text" class="form-control" value="{{old('Name')}}" id="Name" Name="Name" placeholder="ادخل اسم التخصص">
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
        <a href="/admin/specialization" class="btn btn-default">الغاء الامر</a>
    </div>
  </div>
</form>
@endsection

