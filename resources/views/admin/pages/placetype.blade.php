@extends('admin.master')

@section('content')
<div class="content place-type">
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <h5 class="title">BẢNG DANH SÁCH LOẠI ĐỊA ĐIỂM</h5>
                    <button class="btn btn-success btn-round" data-toggle="modal" data-target="#add-placetype">
                        <i class="now-ui-icons ui-1_simple-add"></i> Thêm loại mới
                    </button>
                    <button class="btn btn-danger btn-round" onclick="sweetAlertClick()">
                        <i class="now-ui-icons ui-1_simple-remove"></i> Xóa nhiều
                    </button>
                </div>
                <div class="card-body">
                    <div class="table">
                        <table class="table">
                            <thead class="bg-primary " style="font-size: 10px;color: #ffffff;">
                            <th style="width: 5%">
                                <div class="form-check" >
                                    <label class="form-check-label check-form" >
                                        <input class="form-check-input" type="checkbox" name="checkall" onclick="checkAll()" value="">
                                        <span class="form-check-sign">
                                            <span class="check"></span>
                                        </span>
                                    </label>
                                </div>
                            </th>
                            <th class="text-center" >STT</th><th >TÊN LOẠI DU LỊCH</th><th >MÔ TẢ</th><th class="text-center">THAO TÁC</th>
                            </thead>
                            <tbody>
                            @foreach($type as $tp)
                            <tr>
                                <td>
                                    <div class="form-check">
                                        <label class="form-check-label">
                                            <input class="form-check-input" type="checkbox" name="id_check[]" value="">
                                            <span class="form-check-sign">
                                            <span class="check"></span>
                                        </span>
                                        </label>
                                    </div>
                                </td>
                                <td class="text-center">{{$tp -> id}}</td><td>{{$tp -> name}}</td><td>{{$tp -> description}}</td>
                                <td class="td-actions text-center">
                                    <button class="btn btn-info btn-fab btn-icon btn-round" data-toggle="modal" data-target="#info-placetype">
                                        <i class="now-ui-icons travel_info"></i>
                                    </button>
                                    <button class="btn btn-warning btn-fab btn-icon btn-round" data-toggle="modal" data-target="#edit-placetype">
                                        <i class="now-ui-icons ui-2_settings-90"></i>
                                    </button>
                                    <button class="btn btn-danger btn-fab btn-icon btn-round" onclick="sweetAlertClick()">
                                        <i class="now-ui-icons ui-1_simple-remove"></i>
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
</div>
@endsection