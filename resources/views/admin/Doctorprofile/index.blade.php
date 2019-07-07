@extends("admin._layout")

@section("title")
الأطباء
@endsection
@section("subtitle")
يمكنك اضافة حذف وتعديل الأطباء
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
<form class="row">
    <div class="col-sm-2">
        <input autofocus value="{{$q}}" type="text" class="form-control" name="q" placeholder="ادخل كلمة البحث" />
    </div>
	<div class="col-sm-2">
        <select name="specialized_at" id="specialized_at" class="form-control">
            <option value="">اختيار التخصص</option>
            @foreach($specializations as $c)
                <option {{$c->id==$specialized_at?"selected":""}} value="{{$c->id}}">{{$c->Name}}</option>
            @endforeach
        </select>
    </div>
    <div class="col-sm-2">
        <select name="status" class="form-control">
            <option value="">جميع الحالات</option>
            <option {{$status=='1'?"selected":""}} value="1">فعال</option>
            <option {{$status=='0'?"selected":""}} value="0">غير فعال</option>
        </select>
    </div>
    <div class="col-sm-2">
        <input type="submit" value="انطلق" class="btn btn-primary" />
    </div>

    <div class="col-sm-4">
        <a class="btn btn-success pull-right" href="/admin/doctorprofile/create">
            <i class="fa fa-plus"></i> اضافة طبيب جديد</a>
    </div>
</form>
@if($items->count()>0)
<table class="table table-hover table-striped">
    <thead>
        <tr>
            <th width="5%">الصورة</th>
            <th width="10%">اسم الطبيب</th>
			<th width="10%">التخصص</th>
			<th width="12%">مسموح التعليق</th>
			<th width="10%">حالة الطبيب</th>
            <th width="15%">آخر تعديل</th>
            <th width="10%"></th>
        </tr>
    </thead>
    <tbody>
        @foreach($items as $a)
        <tr>
            <td><img width="50" src="/storage/images/{{$a->Image}}" /></td>
            <td>{{$a->Name}}</td>
			<td>{{$a->specialization->Name}}</td>
			<td><input type="checkbox" value="{{$a->id}}" class='allowComment' 
                       {{$a->allowComment?"checked":""}} /></td>
        <td><input type="checkbox" value="{{$a->id}}" class='cbStatus' 
                   {{$a->status?"checked":""}} /></td>
            <td>{{$a->created_at}}</td>
            <td>
                <a href="/admin/doctorprofile/{{$a->id}}/edit" class="btn btn-xs btn-primary">
                    <i class="glyphicon glyphicon-edit"></i>
                </a>
                <a href="/admin/doctorprofile/{{$a->id}}/delete" class="btn Confirm btn-xs btn-danger">
                    <i class="glyphicon glyphicon-trash"></i>
                </a>
            </td>
        </tr>
        @endforeach
    </tbody>
</table>
@else

<br>
<div class="alert alert-warning"><b>نأسف</b>, لا يوجد بيانات لعرضها ...</div>
@endif
{{$items->links()}}

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
<script>
        $(function(){
            $(".cbStatus").click(function(){
                var id = $(this).val();
                $.get("/admin/doctorprofile/"+id+"/status");
            });
        });
    </script>
<script>
        $(function(){
            $(".allowComment").click(function(){
                var id = $(this).val();
                $.get("/admin/doctorprofile/"+id+"/allowComment");
            });
        });
    </script>
        <!-- END PAGE LEVEL SCRIPTS -->
@endsection