@extends('admin.master')

@section('content')
<div class="content fb-content">
    <div class="card">
        <div class="row">
            <div class="col-12 fb-type clearfix">
                <h3>Loại hình:</h3>
                <div class="row fb-type-title">
                    @foreach(\App\Place_Type::all() as $type)
                    <div class="col-3">
                        <a  href="{{route('admin.danh-gia',[$type->id])}}">
                            <button class="btn btn-primary btn-round ">
                                <i class="fa fa-map-marker"></i> {{$type ->name}}
                            </button>

                        </a>
                    </div>
                    @endforeach
                </div>
            </div>
            <hr>
            <div class="col-12 fb-info clearfix" id="list-place">
                <div class="row">

                    @foreach($danhGia as $dg)
                        <div class="col-3 p-fb-item">
                            <div class="ribbon">
                               <p class="text-center p-ribbon">12</p>
                            </div>
                            <div class="">
                                <a href="{{route('admin.chi-tiet-danh-gia',[$dg->pid])}}">

                                    <div class="fb-item">
                                        <div class="fb-img-item ">
                                            <img src="storage/image/{{$dg -> iname}}">
                                        </div>
                                        <div class="fb-content-item">
                                            {{$dg ->pname}}
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    @endforeach
                </div>
                <div class="div-pagination" style="padding-left: 40%!important;">
                    {{ $danhGia->links() }}
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
