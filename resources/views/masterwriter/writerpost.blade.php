@extends('layout.master')

@section('kontenedufun')
<div class="container-fluid">

    <div class="d-flex flex-wrap p-3">
        <img src="{{asset("assets/writerpic.jpg")}}" class="img fluid rounded-circle me-3" style="width: 100px;" alt="">
        <div >
            <h3 class="fw-bolder">{{$writers-> name}}<br></h1>
            <h6 >Specialis {{$writers -> specialist}}</h6>
        </div>
    </div>

    @foreach ( $writers->mspost as $wp )
    <div class="border-0 mh-auto mb-4" >
        <div class="card h-100 border-0 d-flex flex-row align-items-center">
        <div class="row g-0">
          <div style="width: 30%">
            <img src="{{asset('assets/interactive_multimedia.jpg')}}" class="img-fluid w-100 h-100 p-0" style="border-radius: 40px" alt="...">
          </div>
          <div class="col-md-8">

                <div class="card-body">
                  <h5 class="card-title">{{$wp->title}}</h5>
                  <h6 class="card-date">{{$wp->created_at}} | {{$wp->name}}</h6>
                  <p class="card-text">{{$wp->description}}</p>
                  <p class="card-text"><small class="text-body-secondary"></small></p>
                  <div class="text-end">
                    <a href="{{route('admin.article', ['id'=>$wp->id])}}" class="btn btn-primary rounded-pill px-4 py-2">Read More</a>
                  </div>
                </div>

          </div>
        </div>
        </div>
      </div>

    @endforeach

</div>


@endsection
