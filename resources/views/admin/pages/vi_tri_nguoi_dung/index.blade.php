@extends('admin.master')
<title>
    Vị trí người dùng | Admin
</title>
@section('content')
<div class="content place-type">
    <div class="row">
        <div class="col-md-12">
            <div class="card" >
                {{ method_field('DELETE') }}
                {{ csrf_field() }}
                <div class="card-header">
                    <h5 class="title">BẢNG DANH SÁCH VỊ TRÍ NGƯỜI DÙNG</h5>
                    <button id="all-delete" class="btn btn-danger btn-round" type="submit"
                            data-toggle="modal" data-target="#modal-Alldelete" disabled>
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
