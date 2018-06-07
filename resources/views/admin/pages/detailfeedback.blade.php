@extends('admin.master')

@section('content')
<div class="content fb-content">
    <div class="card">
        <div class="row">

            <div class="col-12 fb-info clearfix">
                <div class="row">
                    <h3 class="col-6">{{$diaDiem->name}}:</h3>
                    <h5 class="col-6 text-right">{{$avg}}/5 ({{$tongdg}} đánh giá)</h5>
                </div>
                <div class="table-responsive">
                    <table class="table hover-table">
                        <thead class="bg-primary" style="font-size: 10px;color: #ffffff;">
                            <tr>
                                <th>ID ĐÁNH GIÁ</th>
                                <th class="text-center">SỐ ĐIỂM</th>
                                <th class="text-center">THỜI ĐIỂM ĐÁNH GIÁ</th>
                                <th class="text-right">THAO TÁC</th>
                            </tr>
                        </thead>
                        <tbody>
                        @foreach($chitiet as $ct)
                            <tr>
                                <td>{{$ct ->fid}}</td>
                                <td class="text-center">{{$ct -> fstar}}</td>
                                <td class="text-center">{{$ct ->fcreated_at . '-' . $ct ->fupdated_at}}</td>
                                <td class="td-actions text-right">
                                    <button class="btn btn-danger btn-fab btn-icon btn-round" type="submit">
                                        <a class="a-white"
                                           href="{{route('admin.xoa-danh-gia',[$ct->fid])}}"
                                           onclick="return confirm('Bạn chắc chắn muốn xóa không?')">
                                            <i class="now-ui-icons ui-1_simple-remove"></i>
                                        </a>
                                    </button>
                                </td>
                            </tr>
                        @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection