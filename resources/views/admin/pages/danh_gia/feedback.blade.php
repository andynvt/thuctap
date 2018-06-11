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
                @include('admin.pages.danh_gia.new_place_feedbacks');
                @include('admin.pages.danh_gia.place_feedbacks');
                </div>
                {{--<div class="div-pagination" style="padding-left: 40%!important;">--}}
                    {{--{{ $danhGia->links() }}--}}
                {{--</div>--}}
            </div>
        </div>
    </div>
</div>
@endsection
