@extends('admin.master')

@section('content')

    <div class="content">
        <div class="row">
            <div class="col-md-12">
                <form class="card" action="{{route('adminxoanhieudiadiem',[0])}}" method="get">
                    {{ method_field('DELETE') }}
                    {{ csrf_field() }}
                    <div class="card-header">
                        <h4 class="card-title title">BẢNG DANH SÁCH ĐỊA ĐIỂM</h4>
                    </div>
                    <div class="card-body">
                        <a style="font-size: 15px" class="btn btn-primary btn-round"
                           href="{{ route('adminthemdiadiem') }}"><i class="now-ui-icons ui-1_simple-add"></i> Thêm địa
                            điểm</a>
                        <button style="font-size: 15px" class="btn btn-danger btn-round" type="submit" onclick="return confirm('Bạn chắc chắn muốn xóa không?')">
                            <i class="now-ui-icons ui-1_simple-remove"></i> Xóa nhiều
                        </button>
                        <br><br>
                        <div class="">
                            <table class="table" id="id-place-table">
                                <thead class="bg-primary " style="font-size: 10px;color: #ffffff;">
                                <th class="collapsing">
                                    <div class="form-check">
                                        <label class="form-check-label">
                                            <input class="form-check-input" type="checkbox" id="checkall"
                                                   onclick="eventCheckBox()">
                                            <span class="form-check-sign">
                                        <span class="check"></span>
                                    </span>
                                        </label>
                                    </div>
                                </th>
                                <th class="text-center">STT</th>
                                <th class="text-center">ID</th>
                                <th>TÊN</th>
                                <th>LOẠI HÌNH</th>
                                <th>QUẬN / HUYỆN</th>
                                <th class="text-center">THAO TÁC</th>
                                </thead>
                                <tbody>
                                @foreach($place as $key => $p)
                                    <tr>
                                        <td class="collapsing">
                                            <div class="form-check">
                                                <label class="form-check-label">
                                                    <input class="form-check-input" type="checkbox"
                                                           name="place-id[]"
                                                           value="{{ $p->id }}">
                                                    <span class="form-check-sign">
                                                        <span class="check"></span>
                                                    </span>
                                                </label>
                                            </div>
                                        </td>
                                        <td class="text-center">{{++$key}}</td>
                                        <td class="text-center">{{$p->id}}</td>
                                        <td>{{$p->name}}</td>
                                        <td>{{$p->ptname}}</td>
                                        <td>{{$p->dname}}</td>
                                        <td class="td-actions text-center">
                                            <a class="btn btn-info btn-fab btn-icon btn-round a-white"
                                                    data-toggle="modal"
                                                    data-target="#info-{{$p->id}}">
                                                <i class="now-ui-icons travel_info"></i>
                                            </a>

                                            <a class="btn btn-warning btn-fab btn-icon btn-round a-white"
                                               href="{{ route('adminsuadiadiem',$p->id) }}">
                                                <i class="now-ui-icons ui-2_settings-90"></i>
                                            </a>

                                            <a class="btn btn-danger btn-fab btn-icon btn-round a-white"
                                                    data-toggle="modal" data-target="#delete-{{$p->id}}">
                                                <i class="now-ui-icons ui-1_simple-remove"></i>
                                            </a>
                                        </td>
                                    </tr>
                                @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
@endsection
@foreach($place as $pl)
<div class="modal fade bd-example-modal-lg" id="info-{{$pl->id}}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="modal-title" id="exampleModalLabel">Thông tin {{$pl->name}}</h3>
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
                                <input type="text" name="name" value="{{$pl->name}}" class="form-control" disabled>
                            </div>
                            <div class="form-group">
                                <label for="type">Loại</label>
                                <input type="text" name="type" value="{{$pl->ptname}}" class="form-control" disabled>
                            </div>
                            <div class="form-group">
                                <label for="city">Quận/Huyện  -  Tỉnh/Thành phố</label>
                                <input type="text" name="city" value="{{$pl->dname}} - {{$pl->cname}}" class="form-control" disabled>
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="form-group">
                                <label for="address">Địa chỉ</label>
                                <input type="text" name="address" value="{{$pl->address}}" class="form-control" disabled>
                            </div>
                            <div class="form-group">
                                <label for="address">Link nhúng Google Map</label>
                                <input type="link" name="map" value="{{$pl->map}}" class="form-control" disabled>
                            </div>
                            <div class="form-group">
                                <label for="address">Toạ độ</label>
                                <input type="link" name="coor" value="{{$pl->coor}}" class="form-control" disabled>
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="form-group">
                                <label for="full_des">Mô tả ngắn gọn</label>
                                <textarea rows="5" class="form-control" id="short_des" name="short_des"
                                          disabled>{!!$pl->short_des!!}</textarea>
                            </div>
                            <div class="form-group">
                                <label for="short_des">Mô tả đầy đủ</label>
                                <textarea rows="5" class="form-control" id="full_des" name="full_des"
                                          disabled>{!!$pl->full_des!!}</textarea>
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

<div class="modal fade" id="delete-{{$pl->id}}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
                            <p>
                            <h5 class="text-center"> Thao tác này sẽ mất dữ liệu<br><br>Bạn có chắc chắn muốn xoá <b>{{$pl->name}}</b> ?</h5>
                            </p>
                        </div>

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary btn-round" data-dismiss="modal">ĐÓNG</button>
                        <span></span>
                        <form action="{{route('adminxoadiadiem', $pl->id)}}">
                            <button type="submit" class="btn btn-primary btn-round" name="del-place">XOÁ</button>
                        </form>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
@endforeach
<script>
    function eventCheckBox() {
        let checkboxs = document.getElementsByName("place-id[]");
        let checkAll = document.getElementById('checkall');
        for (let i = 0; i < checkboxs.length; i++) {
            checkboxs[i].checked = checkAll.checked;
        }
    }
</script>