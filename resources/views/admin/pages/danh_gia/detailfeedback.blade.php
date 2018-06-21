@extends('admin.master')
<title>
    {{$diaDiem->name}}- Đánh giá | Admin
</title>
@section('content')
<div class="content fb-content">
    <div class="card">
        <div class="row">
            <div class="col-12 fb-info clearfix">
                <div class="card-header">
                    <div class="row">
                        <h3 class="col-6">{{$diaDiem->name}}:</h3>
                        <h5 class="col-6 text-right">
                            <b>{{number_format((float)$avg,2,'.','')}}</b>
                            /5 ({{$tongdg}} đánh giá)</h5>
                    </div>
                    <button id="all-delete" class="btn btn-danger btn-round" data-toggle="modal" data-target="#modal-Alldelete" disabled>
                        <i class="now-ui-icons ui-1_simple-remove"></i> Xóa nhiều
                    </button>
                </div>
                @include('admin.pages.danh_gia.table')
            </div>
        </div>
    </div>
</div>
@include('admin.pages.danh_gia.modals')
@endsection
<script>
    function fbCheckBox() {
        let checkboxs = document.getElementsByName("danh-gia-id[]");
        let checkAll = document.getElementById('checkall');
        for (let i = 0; i < checkboxs.length; i++) {
            checkboxs[i].checked = checkAll.checked;
        }
    }
</script>
