@extends('layout.master')

@section('kontenedufun')
<div class="container-fluid ">
    <div>
        <h1 class="fw-bolder">{{$post->mscategory->category}}</h1>
    </div>

    <div class="mt-3 mb-3 d-flex flex-column align-items-center">
        <div class="card mb-3" style="width: 90%; background-color: #f0f4ef;">
            <img src="{{asset('assets/interactive_multimedia.jpg')}}" class="card-img-top rounded-3" style="height: 500px;" alt="...">
            <div class="card-body">
            <h6>{{$post->created_at}} | by: {{$post->Writer->name}}</h6>
              <p class="card-text">{{$post->description}}</p>
            </div>
        </div>
    </div>

</div>
@endsection
