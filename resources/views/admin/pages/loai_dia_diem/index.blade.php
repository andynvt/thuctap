@extends('admin.master')
<title>
    Loại địa điểm | Admin
</title>
@section('content')
<div class="content place-type">
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <h5 class="title">BẢNG DANH SÁCH LOẠI ĐỊA ĐIỂM</h5>
                    <button class="btn btn-primary btn-round" type="button"
                            data-toggle="modal" data-target="#add-placetype">
                        <i class="now-ui-icons ui-1_simple-add"></i> Thêm loại mới
                    </button>
                    <button class="btn btn-danger btn-round" onclick="$('{{ "#modal-Alldelete"}}').modal('show')">
                        <i class="now-ui-icons ui-1_simple-remove"></i> Xóa nhiều
                    </button>
                </div>
                <div class="card-body">
                    <div class="table">
                        @include('admin.pages.loai_dia_diem.table')
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@include('admin.pages.loai_dia_diem.modals')

@endsection
