@extends('layout.master')

@section('kontenedufun')
<div class="container-fluid">
    <div>
        <h1 class="fw-bolder">Our Writers: </h1>
    </div>

    <div class="d-flex flex-wrap justify-content-center  ">
        @foreach ($writers as $w )

        <div class="col-md-4 mb-4 d-flex justify-content-center ">
            <div class="card ms-3 me-3 mt-3 mb-3 " style="width: 18rem; border:none; background-color:#f0f4ef;">
                <a href="{{route('admin.writerid', ['id'=>$w->id])}}">
                    <img src="{{asset('assets\writerpic.jpg')}}" class="card-img-top rounded-circle mx-auto mt-3"  alt="...">
                        <div class="card-body text-center">
                            <h5 class="card-title fw-bolder">{{$w -> name}}</h5>
                            <h6 class="card-text">{{$w -> specialist}}</h6>
                        </div>
                </a>
            </div>
        </div>
        @endforeach

    </div>


</div>


@endsection
