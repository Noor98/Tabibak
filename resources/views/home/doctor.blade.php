@extends('layouts.app')

@section('content')



<div class="container">
    <h1>{{$doctor->Name}}</h1>
    <div class="row">
        <div class="col-md-7">
            {!!str_replace("\n",'<br>',$doctor->summary)!!}
        </div>
        <div class="col-md-5">
            <img class="img-fluid" src="/thumb.php?size=445x275&src=./storage/images/{{$doctor->Image}}">
        </div>
    </div>
    <br>
    <br>
    <h2>التعليقات</h2>
    @if($doctor->comments->count()>0)
        @foreach($doctor->comments as $c)
         @if($c->status && $c->isdelete!=1)
            <div class="media">
              <div class="media-body"><span class="float-right">{{$c->created_at}}</span>
                <h5 class="mt-0">{{$c->user->name}}</h5>
                {{$c->Content}}
              </div>
            </div>
          @endif
            <hr>
        @endforeach
    @endif
    @if($doctor->allowComment)
    @guest
    <div class="jumbotron">
  <h3>لاضافة تعليقك</h3>
    <p>يجب ان تكون عضو مسجل لدينا للتسجيل 
        
        <a href="/register">اضغط هنا</a>
        </p>
</div>
    @else
    <form method="post" action="/home/doctor/{{$doctor->id}}">
        {{csrf_field()}}
    <div class="form-group">
    <label for="Content">اترك لنا تعليقك</label>
        @include("_msg")
    <textarea maxlength="255" class="form-control" id="Content" name="Content" rows="3">{{old("Content")}}</textarea>
  </div>
        <button class="btn btn-primary">موافق</button>
    </form>
    @endguest
    @endif
</div>
@endsection
