@extends('layouts.app')

@section('content')



<div class="container">
    <h1>المقالات</h1>

<form class="row">
    <div class="col-sm-4">
        <input autofocus value="{{$q}}" type="text" class="form-control" name="q" placeholder="ادخل كلمة البحث" />
    </div>
	<div class="col-sm-4">
        <select name="specialized_at" id="specialized_at" class="form-control">
            <option value="">اختيار التصنيف</option>
            @foreach($specializations as $c)
                <option {{$c->id==$specialized_at?"selected":""}} value="{{$c->id}}">{{$c->Name}}</option>
            @endforeach
        </select>
    </div>
    <div class="col-sm-4">
        <input type="submit" value="انطلق" class="btn btn-primary" />
    </div>
</form>

   <hr>
     @foreach($items as $a)
    <div class="card">
        <div class="row">
            <div class="col-3"><img class="img-fluid" src="/thumb.php?size=436x270&src=./storage/images/{{$a->Image}}"></div>
            <div class="col-9">
            <h5 class="card-title">{{$a->Name}}</h5>
                <label class="badge  badge-info">{{$a->specialization->Name}}</label>
        <p class="card-text">{{$a->summary}}</p>
        <a href="/home/doctor/{{$a->id}}" class="btn btn-primary">اقرأ المزيد</a>
            </div>
        </div>
    </div>
        <br><br>
    @endforeach
    
    {{$items->links()}}
</div>
@endsection
