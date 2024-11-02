@extends('layout.master')

@section('kontenedufun')

<div class="container-fluid">
    @if ($subject == 1)
        <h1 class="fw-bolder">Interactive Multimedia</h1>

    @else
        <h1 class="fw-bolder">Software Engineering</h1>

    @endif

    @foreach ($post as $p )
    <div class="border-0 mh-auto mb-4" >
    <div class="card h-100 border-0 d-flex flex-row align-items-center">
    <div class="row g-0">
        <div style="width: 30%">
        <img src="{{asset('assets/interactive_multimedia.jpg')}}" class="img-fluid w-100 h-100 p-0" style="border-radius: 40px" alt="...">
        </div>
        <div class="col-md-8">
        <div class="card-body">
            <h5 class="card-title">{{$p->title}}</h5>
            <h6 class="card-date">{{$p->created_at}} | {{$p->Writer->name}}</h6>
            <p class="card-text">{{$p->description}}</p>
            <p class="card-text"><small class="text-body-secondary"></small></p>
            <div class="text-end">
            <a href="" class="btn btn-primary rounded-pill px-4 py-2">Read More</a>
            </div>
        </div>
        </div>
    </div>
    </div>
    </div>
    @endforeach

</div>


@endsection
