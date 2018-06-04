@extends('admin.master')

@section('content')
<div class="content place-type">
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <h5 class="title">BẢNG DANH SÁCH VỊ TRÍ NGƯỜI DÙNG</h5>
                    <button class="btn btn-danger btn-round" onclick="sweetAlertClick()">
                        <i class="now-ui-icons ui-1_simple-remove"></i> Xóa nhiều
                    </button>
                </div>
                <div class="card-body">
                    <div class="table">
                        @include('admin.pages.vi_tri_nguoi_dung.table')
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@include('admin.pages.vi_tri_nguoi_dung.modals')
@endsection
