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
                        <table class="table hover-table">
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

<!-- Sart add type Modal -->
<div class="modal fade" id="add-placetype" tabindex="-1" role="dialog" aria-labelledby="list-type" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="modal-title text-success title" id="list-type">THÊM MỚI LOẠI DU LỊCH</h3>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form method="post">
                    <div class="form-group">
                        <label class="bmd-label-floating">ID loại</label>
                        <input type="text" class="form-control" name="id_type" minlength="2" required>
                    </div>
                    <div class="form-group">
                        <label class="bmd-label-floating">Tên loại du lịch</label>
                        <input type="text" class="form-control" name="name_type" placeholder="Nhập tên loại..." minlength="5" required>
                    </div>
                    <div class="form-group">
                        <label class="bmd-label-floating">Mô tả</label>

                        <textarea class="form-control" placeholder="Nhập nội dung..." rows="5"></textarea>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary btn-round" data-dismiss="modal">ĐÓNG</button>
                        <span></span>
                        <button type="submit" class="btn btn-primary btn-round" name="add-emp">LƯU LẠI</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<!--  End Modal -->

<!-- Sart view type place Modal -->
<div class="modal fade" id="info-placetype" tabindex="-1" role="dialog" aria-labelledby="list-info-placetype" aria-hidden="true">
    <div class="modal-dialog" role="document" style="max-width: 80%; min-height: 30%;">
        <div class="modal-content">
            <div class="modal-header text-center">
                <h5 class="modal-title text-info title" id="list-info-placetype">DANH SÁCH LIÊN QUAN</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="table">
                    <table class="table">
                        <thead class="bg-info" style="font-size: 12px; color: #ffffff;">
                        <th class="text-center">STT</th><th style="width: 20%">ĐỊA ĐIỂM DU LỊCH</th><th style="width: 30%">ĐỊA CHỈ</th><th >MÔ TẢ SƠ LƯỢT</th>
                        </thead>
                        <tbody>
                        <tr>
                            <td class="text-center">1</td>
                            <td>Chợ nổi cái Răng</td>
                            <td>Trên sông Cần Thơ, gần cầu Cái Răng,
                                cách trung tâm thành phố Cần Thơ khoảng 6 km đường bộ
                                và mất 30 phút nếu đi bằng thuyền từ Bến Ninh Kiều.
                            </td>
                            <td>
                                Chợ nổi Cái Răng cách trung tâm Thành phố Cần Thơ khoảng 6
                                km đường bộ và mất 30 phút khi chúng ta đi bằng thuyền từ Bến
                                Ninh Kiều.
                            </td>
                        </tr>
                        <tr>
                            <td class="text-center">2</td>
                            <td>Chợ nổi cái Răng</td>
                            <td>Trên sông Cần Thơ, gần cầu Cái Răng,
                                cách trung tâm thành phố Cần Thơ khoảng 6 km đường bộ
                                và mất 30 phút nếu đi bằng thuyền từ Bến Ninh Kiều.
                            </td>
                            <td>
                                Chợ nổi Cái Răng cách trung tâm Thành phố Cần Thơ khoảng 6
                                km đường bộ và mất 30 phút khi chúng ta đi bằng thuyền từ Bến
                                Ninh Kiều.
                            </td>
                        </tr>
                        <tr>
                            <td class="text-center">3</td>
                            <td>Chợ nổi cái Răng</td>
                            <td>Trên sông Cần Thơ, gần cầu Cái Răng,
                                cách trung tâm thành phố Cần Thơ khoảng 6 km đường bộ
                                và mất 30 phút nếu đi bằng thuyền từ Bến Ninh Kiều.
                            </td>
                            <td>
                                Chợ nổi Cái Răng cách trung tâm Thành phố Cần Thơ khoảng 6
                                km đường bộ và mất 30 phút khi chúng ta đi bằng thuyền từ Bến
                                Ninh Kiều.
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary btn-round" data-dismiss="modal">ĐÓNG</button>
                    <span></span>
                </div>
            </div>
        </div>
    </div>
</div>
<!--  End Modal -->

<!-- Sart add type Modal -->
<div class="modal fade" id="edit-placetype" tabindex="-1" role="dialog" aria-labelledby="list-edit-placetype" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header text-center">
                <h3 class="modal-title title text-primary" id="list-edit-placetype">CẬP NHẬT LOẠI DU LỊCH</h3>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form method="post">
                    <div class="form-group">
                        <label class="bmd-label-floating">ID loại</label>
                        <input type="text" class="form-control" name="id_type" minlength="2" required>
                    </div>
                    <div class="form-group">
                        <label class="bmd-label-floating">Tên loại du lịch</label>
                        <input type="text" class="form-control" name="name_type" placeholder="Nhập tên loại..." minlength="5" required>
                    </div>
                    <div class="form-group">
                        <label class="bmd-label-floating">Mô tả</label>

                        <textarea class="form-control" placeholder="Nhập nội dung..." rows="5"></textarea>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary btn-round" data-dismiss="modal">ĐÓNG</button>
                        <span></span>
                        <button type="submit" class="btn btn-primary btn-round" name="add-emp">LƯU LẠI</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<!--  End Modal -->