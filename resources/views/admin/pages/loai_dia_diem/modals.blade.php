
{{--<!--Modal thêm mới loại địa điểm -->--}}
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
                <form action="{{ route('admin.them-loai') }}" method="post">
                    {{ csrf_field() }}
                    <div class="form-group">
                        <label class="bmd-label-floating">Tên loại du lịch</label>
                        <input type="text" class="form-control" name="name_type" id="name_type" placeholder="Nhập tên loại..." minlength="5" required>
                    </div>
                    <div class="form-group">
                        <label class="bmd-label-floating">Mô tả</label>
                        <textarea class="form-control" name="des" id="des" placeholder="Nhập nội dung..." rows="5"></textarea>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary btn-round" data-dismiss="modal">ĐÓNG</button>
                        <span></span>
                        <button class="btn btn-primary btn-round" name="add-emp">LƯU LẠI</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
{{--<!--  End Modal -->--}}

<!-- Modal hiện thị danh sách địa điểm thuộc loại-->
@foreach($placeType as $tp)
<div class="modal fade" id="infoplace-{{$tp->id}}" tabindex="-1" role="dialog" aria-labelledby="list-info-placetype-{{$tp->id}}" aria-hidden="true">
    <div class="modal-dialog" role="document" style="max-width: 80%; min-height: 30%;">
        <div class="modal-content">
            <div class="modal-header text-center">
                <h5 class="modal-title text-info title" id="list-info-placetype-{{$tp->id}}">DANH SÁCH LIÊN QUAN</h5>
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
                        @foreach(\App\Place::where('id_type', $tp->id)->get() as $stt => $rslp)
                        <tr>
                            <td class="text-center">{{$stt +1}}</td>
                            <td>{{$rslp -> name}}</td>
                            <td>{{$rslp -> address}}
                            </td>
                            <td>
                                {!! $rslp -> short_des !!}
                            </td>
                        </tr>
                            @endforeach
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
@endforeach
{{--<!--  End Modal -->--}}

{{--<!-- Modal sửa loại địa điểm-->--}}
@foreach($placeType as $tp)
<div class="modal fade" id="edit-placetype{{$tp->id}}" tabindex="-1" role="dialog" aria-labelledby="list-edit-placetype-{{$tp->id}}" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header text-center">
                <h3 class="modal-title title text-primary" id="list-edit-placetype-{{$tp->id}}">CẬP NHẬT LOẠI DU LỊCH</h3>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="{{route('admin.sua-loai',[$tp->id])}}" method="post">
                    {{ csrf_field() }}
                    <div class="form-group">
                        <label class="bmd-label-floating">Tên loại du lịch</label>
                        <input type="text" class="form-control" name="name_type" id="name_type" value="{{$tp->name}}" minlength="5" required>
                    </div>
                    <div class="form-group">
                        <label class="bmd-label-floating">Mô tả</label>
                        <textarea class="form-control" name="des" id="des" rows="5">{{$tp->description}} </textarea>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary btn-round" data-dismiss="modal">ĐÓNG</button>
                        <span></span>
                        <button class="btn btn-primary btn-round" name="add-emp">LƯU LẠI</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
@endforeach
{{--<!--  End Modal -->--}}
