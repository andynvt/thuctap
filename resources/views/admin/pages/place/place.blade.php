@extends('admin.master')

@section('content')
<div class="content">
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title title">Bảng DANH SÁCH ĐỊA ĐIỂM</h4>
                </div>
                <div class="card-body">
                    <a style="font-size: 15px" class="btn btn-primary btn-round" href="{{ route('adminthemdiadiem') }}" ><i class="now-ui-icons ui-1_simple-add"></i> Thêm địa điểm</a>
                    <br><br>
                    <div class="">
                        <table class="mdl-data-table table hover-table" id="place-table">
                            <thead class=" text-primary">
                                <th class="text-left">
                                    ID
                                </th>
                                <th class="text-left">
                                    Tên
                                </th>
                                <th class="text-left">
                                    Loại hình
                                </th>
                                <th class="text-left">
                                    Tỉnh
                                </th>
                                <th class="text-center">
                                    Thao tác
                                </th>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        1
                                    </td>
                                    <td>
                                        Dakota Rice
                                    </td>
                                    <td>
                                        Niger
                                    </td>
                                    <td class="text-left">
                                        Oud-Turnhout
                                    </td>
                                    <td class="td-actions text-center">
                                        <button class="btn btn-info btn-fab btn-icon btn-round" data-toggle="modal" data-target="#info">
                                        <i class="now-ui-icons travel_info"></i>
                                        </button>

                                        <a class="btn btn-warning btn-fab btn-icon btn-round" href="{{ route('adminsuadiadiem') }}">
                                            <i class="now-ui-icons ui-2_settings-90"></i>
                                        </a>

                                        <button class="btn btn-danger btn-fab btn-icon btn-round" data-toggle="modal" data-target="#delete">
                                        <i class="now-ui-icons ui-1_simple-remove"></i>
                                        </button>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection


<div class="modal fade bd-example-modal-lg" id="info" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="modal-title" id="exampleModalLabel">Thông tin XXX</h3>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                <i class="now-ui-icons ui-1_simple-remove"></i>
            </button>
            </div>
            <div class="modal-body">
                <form method="">
                    <div class="row">
                        <div class="col-6 ">
                            <div class="form-group">
                                <label for="name">Tên</label>
                                <input type="text" name="name" value="XXX" class="form-control" disabled>
                            </div>
                            <div class="form-group">
                                <label for="type">Loại</label>
                                <input type="text" name="type" value="XXX" class="form-control" disabled>
                            </div>
                            <div class="form-group">
                                <label for="city">Thành phố</label>
                                <input type="text" name="city" value="XXX" class="form-control" disabled>
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="form-group">
                                <label for="address">Địa chỉ</label>
                                <input type="text" name="address" value="XXX" class="form-control" disabled>
                            </div>
                            <div class="form-group">
                                <label for="address">Link nhúng Google Map</label>
                                <input type="link" name="map" value="XXX" class="form-control" disabled>
                            </div>
                            <div class="form-group">
                                <label for="address">Toạ độ</label>
                                <input type="link" name="coor" value="XXX" class="form-control" disabled>
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="form-group">
                                <label for="full_des">Mô tả ngắn gọn</label>
                                <textarea rows="5" class="form-control" id="short_des" name="short_des" disabled>XXX</textarea>
                            </div>
                            <div class="form-group">
                                <label for="short_des">Mô tả đầy đủ</label>
                                <textarea rows="5" class="form-control" id="full_des" name="full_des" disabled>XXX</textarea>
                            </div>
                            <div class="form-group">
                                <label for="images" disabled>Hình ảnh: </label>
                            </div>
                        </div>
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

<div class="modal fade" id="delete" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="modal-title" id="exampleModalLabel">Xác nhận xoá</h3>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                <i class="now-ui-icons ui-1_simple-remove"></i>
            </button>
            </div>
            <div class="modal-body">
                <form method="">
                    <div class="row">
                        <div class="col-12">
                            <h4>Thao tác này sẽ mất dữ liệu</h4>
                            <h4>Bạn có chắc chắn muốn xoá XXX ?</h4>
                        </div>

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary btn-round" data-dismiss="modal">ĐÓNG</button>
                        <span></span>
                        <button type="submit" class="btn btn-primary btn-round" name="del-place">XOÁ</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>