@extends('layouts.app')

@section('content')



<div class="container">
    
    @if($sliders->count()>0)
    <div id="carouselExampleControls" class="carousel slide">
         <?php $i=0; ?>
      @foreach($sliders as $s)
  <div class="carousel-inner">
     
    <div class="carousel-item {{$i++==0?'active':''}}">
      <img class="d-block w-100" src="/thumb.php?size=700x329&src=./storage/images/{{$s->Image}}" alt="First slide">
        <div class="carousel-caption d-none d-md-block">
            <h5>{{$s->Title}}</h5>
            <p>{{$s->summary}}</p>
            <p>
            <a  href="{{$s->Url}}" target="_blank"> للانتقال الي المقال اضغط هنا ^_*</a></p>
      </div>
    </div>
      @endforeach
  </div>
  <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
    @else
    <div class="jumbotron">
  <h1>ادارة المحتوى!</h1>
  <p>اهلا وسهلا بكم في موقعنا الجديد</p>
</div>

    @endif
    
    <hr>
    
    
    <div class="row">
            @foreach($top4Articles as $a)
        <div class="col-md-3 col-sm-6">
        <div class="card">
    <img class="card-img-top" src="/thumb.php?size=436x270&src=./storage/images/{{$a->Image}}" 
         alt="Card image cap"> 
          <div class="card-body">
            <h5 class="card-title">{{$a->Name}}</h5>
            <p class="card-text">{{$a->specialization->Name}}</p>
            <a href="/home/doctor/{{$a->id}}" style="background-color:#563d7c"   class="btn btn-primary">اقرأ المزيد</a>
          </div>
        </div>
        </div>
        @endforeach

    </div>
    
</div>
@endsection
