@extends('admin.master')

@section('content')
<div class="content place-type">
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <h5 class="title">BẢNG DANH SÁCH VỊ TRÍ NGƯỜI DÙNG</h5>
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
                            <th class="text-center" >STT</th><th >ID TRUY CẬP</th><th >THỜI GIAN TRUY CẬP</th><th class="text-center">VỊ TRÍ</th><th class="text-center">THAO TÁC</th>
                            </thead>
                            <tbody>
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
                                <td class="text-center">1</td><td>ID001</td><td>2018-05-24</td>
                                <td class="td-actions text-center">
                                    <button class="btn btn-info btn-fab btn-icon btn-round" data-toggle="modal" data-target="#view-location">
                                        <i class="now-ui-icons location_pin"></i>
                                    </button>
                                </td>
                                <td class="text-center">
                                    <button class="btn btn-danger btn-fab btn-icon btn-round" onclick="sweetAlertClick()">
                                        <i class="now-ui-icons ui-1_simple-remove"></i>
                                    </button>
                                </td>
                            </tr>
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
                                <td class="text-center">1</td><td>ID001</td><td>2018-05-24</td>
                                <td class="td-actions text-center">
                                    <button class="btn btn-info btn-fab btn-icon btn-round" data-toggle="modal" data-target="#view-location">
                                        <i class="now-ui-icons location_pin"></i>
                                    </button>
                                </td>
                                <td class="text-center">
                                    <button class="btn btn-danger btn-fab btn-icon btn-round" onclick="sweetAlertClick()">
                                        <i class="now-ui-icons ui-1_simple-remove"></i>
                                    </button>
                                </td>
                            </tr>
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
                                <td class="text-center">1</td><td>ID001</td><td>2018-05-24</td>
                                <td class="td-actions text-center">
                                    <button class="btn btn-info btn-fab btn-icon btn-round" data-toggle="modal" data-target="#view-location">
                                        <i class="now-ui-icons location_pin"></i>
                                    </button>
                                </td>
                                <td class="text-center">
                                    <button class="btn btn-danger btn-fab btn-icon btn-round" onclick="sweetAlertClick()">
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

<!-- Sart add type Modal -->
<div class="modal fade" id="view-location" tabindex="-1" role="dialog" aria-labelledby="list-type" aria-hidden="true">
    <div class="modal-dialog" role="document" style="max-width: 50%;">
        <div class="modal-content" >
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="card-body" id="map">
                <div class="map-responsive">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3928.7926945322533!2d105.7870708008999!3d10.03395864279271!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31a062a2111cf0ed%3A0x4c8a499d81395168!2zQ8O0bmcgVmnDqm4gQsOqzIFuIE5pbmggS2nhu4F1IEPhuqduIFRoxqE!5e0!3m2!1svi!2s!4v1526614378134" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
                </div>
            </div>
        </div>
    </div>
</div>
<!--  End Modal -->