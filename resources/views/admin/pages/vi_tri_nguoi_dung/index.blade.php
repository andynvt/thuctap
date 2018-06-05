@extends('admin.master')

@section('content')
<div class="content place-type">
    <div class="row">
        <div class="col-md-12">
            <form class="card" action="{{route('admin.xoa-vi-tri-da-chon',[0])}}" method="get">
                {{ method_field('DELETE') }}
                {{ csrf_field() }}
                <div class="card-header">
                    <h5 class="title">BẢNG DANH SÁCH VỊ TRÍ NGƯỜI DÙNG</h5>
                    <button class="btn btn-danger btn-round" type="submit" onclick="return confirm('Bạn chắc chắn muốn xóa không?')">
                        <i class="now-ui-icons ui-1_simple-remove"></i> Xóa nhiều
                    </button>
                </div>
                <div class="card-body">
                    <div class="table">
                        @include('admin.pages.vi_tri_nguoi_dung.table')
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
@include('admin.pages.vi_tri_nguoi_dung.modals')
@endsection
