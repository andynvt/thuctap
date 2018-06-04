@extends('admin.master')

@section('content')
<div class="content place-type">
    <div class="row">
        <div class="col-md-12">
            <form class="card" action="{{route('admin.xoa-da-chon',[0])}}">
                {{ method_field('DELETE') }}
                {{ csrf_field() }}
                <div class="card-header">
                    <h5 class="title">BẢNG DANH SÁCH LOẠI ĐỊA ĐIỂM</h5>
                    <button class="btn btn-success btn-round" data-toggle="modal"
                            onclick="$('#add-placetype').modal('show')" >
                        <i class="now-ui-icons ui-1_simple-add"></i> Thêm loại mới
                    </button>
                    <button class="btn btn-danger btn-round" onclick="return confirmDelete()">
                        <i class="now-ui-icons ui-1_simple-remove"></i> Xóa nhiều
                    </button>
                </div>
                <div class="card-body">
                    <div class="table">
                        @include('admin.pages.loai_dia_diem.table')
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
    @include('admin.pages.loai_dia_diem.modals')
@endsection
@push('script')
    <script>
        {{--@dd(bindSelectAll('chon-het-loai-sp'));--}}
        //   bindSelectAll('chon-het-nha-cung-cap');

        // bindDataTable('bang-loai-sp');
    </script>
@endpush