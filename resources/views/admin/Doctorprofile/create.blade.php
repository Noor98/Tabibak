@extends("admin._layout")

@section("title")
اضافة طبيب جديد
@endsection

@section("css")
        <!-- BEGIN PAGE LEVEL PLUGINS -->
        <link href="/metronic/assets/global/plugins/bootstrap-daterangepicker/daterangepicker.min.css" rel="stylesheet" type="text/css" />
        <link href="/metronic/assets/global/plugins/bootstrap-timepicker/css/bootstrap-timepicker.min.css" rel="stylesheet" type="text/css" />
        <link href="/metronic/assets/global/plugins/bootstrap-datetimepicker/css/bootstrap-datetimepicker.min.css" rel="stylesheet" type="text/css" />
        <link href="/metronic/assets/global/plugins/clockface/css/clockface.css" rel="stylesheet" type="text/css" />
        <!-- END PAGE LEVEL PLUGINS -->
@endsection

@section("content")
<form action="/admin/doctorprofile" enctype="multipart/form-data" method="post" class="form-horizontal">
    {{csrf_field()}}
  <div class="form-group">
    <label for="Name" class="col-sm-2 control-label">اسم الطبيب </label>
    <div class="col-sm-10 col-md-5">
      <input autofocus type="text" class="form-control" value="{{old('Name')}}" id="Name" name="Name" placeholder="ادخل اسم الطبيب">
    </div>
  </div>
  <div class="form-group">
    <label for="summary" class="col-sm-2 control-label">تفاصيل الطبيب </label>
    <div class="col-sm-10 col-md-10">
        <textarea  id="summary" rows="7" name="summary" placeholder="ادخل تفاصيل الطبيب" class="form-control">{{old('summary')}}</textarea>
    </div>
  </div> 
  <div class="form-group">
    <label for="specialized_at" class="col-sm-2 control-label">التخصص</label>
    <div class="col-sm-5">
        <select required name="specialized_at" id="specialized_at" class="form-control">
            <option value="">اختيار التخصص</option>
            @foreach($specializations as $c)
                <option {{$c->id==old('specialized_at')?"selected":""}} value="{{$c->id}}">{{$c->Name}}</option>
            @endforeach
        </select>
    </div>
  </div>
<div class="form-group">
    <label for="Image" class="col-sm-2 control-label">صورة الطبيب </label>
    <div class="col-sm-10 col-md-5">
      <input type="file" name="Image"  />
    </div>
  </div> 
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <div class="checkbox">
        <label>
          <input {{old('allowcomment')?"checked":""}} name="allowcomment" type="checkbox"> مسموح التعليق
        </label>
      </div>
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
        <a href="/admin/doctorprofile" class="btn btn-default">الغاء الامر</a>
    </div>
  </div>
</form>
@endsection

@section("js")
 <!-- BEGIN PAGE LEVEL PLUGINS -->
        <script src="/metronic/assets/global/plugins/moment.min.js" type="text/javascript"></script>
        <script src="/metronic/assets/global/plugins/bootstrap-daterangepicker/daterangepicker.min.js" type="text/javascript"></script>
        <script src="/metronic/assets/global/plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js" type="text/javascript"></script>
        <script src="/metronic/assets/global/plugins/bootstrap-timepicker/js/bootstrap-timepicker.min.js" type="text/javascript"></script>
        <script src="/metronic/assets/global/plugins/bootstrap-datetimepicker/js/bootstrap-datetimepicker.min.js" type="text/javascript"></script>
        <script src="/metronic/assets/global/plugins/clockface/js/clockface.js" type="text/javascript"></script>
        <!-- END PAGE LEVEL PLUGINS -->
        <!-- BEGIN THEME GLOBAL SCRIPTS -->
        <script src="/metronic/assets/global/scripts/app.min.js" type="text/javascript"></script>
        <!-- END THEME GLOBAL SCRIPTS -->
        <!-- BEGIN PAGE LEVEL SCRIPTS -->
        <script src="/metronic/assets/pages/scripts/components-date-time-pickers.min.js" type="text/javascript"></script>
        <!-- END PAGE LEVEL SCRIPTS -->
@endsection