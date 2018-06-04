<table class="table hover-table">
    <thead class="bg-primary " style="font-size: 10px;color: #ffffff;">
    <th style="width: 5%">
        <div class="form-check">
            <label class="form-check-label check-form">
                <input class="form-check-input" type="checkbox" name="checkall" onclick="checkAll()" value="">
                <span class="form-check-sign">
                                        <span class="check"></span>
                                    </span>
            </label>
        </div>
    </th>
    <th class="text-center">STT</th>
    <th class="text-center">ID TRUY CẬP</th>
    <th>THỜI GIAN TRUY CẬP</th>
    <th class="text-center">VỊ TRÍ</th>
    <th class="text-center">THAO TÁC</th>
    </thead>
    <tbody>
    @foreach($userLocation as $stt =>$ul)
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
        <td class="text-center">{{$stt + 1}}</td>
        <td class="text-center">{{$ul -> id}}</td>
        <td>{{($ul -> created_at).('-').($ul -> updated_at)}}</td>
        <td class="td-actions text-center">
            <button class="btn btn-info btn-fab btn-icon btn-round" data-toggle="modal" data-target="#view-location">
                <i class="now-ui-icons location_pin"></i>
            </button>
        </td>
        <td class="text-center">
            <button class="btn btn-danger btn-fab btn-icon btn-round" type="submit">
                <a class="a-delete"
                   href="{{route('admin.xoa-vi-tri',[$ul->id])}}"
                   onclick="return confirm('Bạn chắc chắn muốn xóa không?')">
                    <i class="now-ui-icons ui-1_simple-remove"></i>
                </a>
            </button>
        </td>
    </tr>
    @endforeach

    </tbody>
</table>