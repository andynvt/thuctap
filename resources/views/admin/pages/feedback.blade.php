@extends('admin.master')

@section('content')
<div class="content fb-content">
    <div class="card">
        <div class="row">
            <div class="col-12 fb-type clearfix">
                <h3>Loại hình:</h3>
                <div class="row fb-type-title">
                    <div class="col-3">
                        <button class="btn btn-primary btn-round">
                            <i class="fa fa-map-marker"></i> Địa điểm
                        </button>
                    </div>
                    <div class="col-3">
                        <button class="btn btn-primary btn-round">
                            <i class="fas fa-utensils"></i> Quán ăn
                        </button>
                    </div>
                    <div class="col-3">
                        <button class="btn btn-primary btn-round">
                            <i class="fas fa-bed"></i> Khách sạn
                        </button>
                    </div>
                    <div class="col-3">
                        <button class="btn btn-primary btn-round">
                            <i class="fas fa-bed"></i> Khách sạn
                        </button>
                    </div>
                </div>
            </div>

            <hr>

            <div class="col-12 fb-info clearfix">
                <div class="row">
                    <div class="col-3 p-fb-item">
                        <a href="{{ route('adminchitietdanhgia') }}">
                            <div class="fb-item">
                                <div class="fb-img-item">  
                                    <img src="source/admin/images/1big.jpg">
                                </div>
                                <div class="fb-content-item">
                                    Bến Ninh Kiều
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection