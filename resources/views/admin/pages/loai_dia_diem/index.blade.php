@extends('admin.master')

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
<script>
    function alertDelete() {
        swal({
            title: "Are you sure?",
            text: "Are you sure that you want to delete this photo?",
            type: "warning",
            showCancelButton: true,
            closeOnConfirm: false,
            confirmButtonText: "Yes, delete it!",
            confirmButtonColor: "#ec6c62"
        },
            function () {
            $.ajax({
                url: '{{route('admin.xoa-da-chon',[0])}}',
                type: "DELETE"
            })
                .done(function (data) {
                    swal("Deleted!", "Your file was successfully deleted!", "success");
                })
                .error(function (data) {
                    swal("Oops", "We couldn't connect to the server!", "error");
                });
        })
    }
</script>