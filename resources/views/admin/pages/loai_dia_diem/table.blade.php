<table class="table">
    <thead class="bg-primary " style="font-size: 10px;color: #ffffff;">
    <th style="width: 5%">
        <div class="form-check">
            <label class="form-check-label check-form">
                <input class="form-check-input" type="checkbox" name="checkall" id="selectAll">
                <span class="form-check-sign">
                                            <span class="check"></span>
                                        </span>
            </label>
        </div>
    </th>
    <th class="text-center">STT</th>
    <th>TÊN LOẠI DU LỊCH</th>
    <th>MÔ TẢ</th>
    <th class="text-center">THAO TÁC</th>
    </thead>
    <tbody>
    @foreach($placeType as $tp)
        <tr>
            <td>
                <div class="form-check">
                    <label class="form-check-label">
                        <input class="form-check-input" type="checkbox" name="id_check[]" value="{{$tp->id}}">
                        <span class="form-check-sign">
                                            <span class="check"></span>
                                        </span>
                    </label>
                </div>
            </td>
            <td class="text-center">{{$tp -> id}}</td>
            <td>{{$tp -> name}}</td>
            <td>{{$tp -> description}}</td>
            <td class="td-actions text-center">
                <button class="btn btn-info btn-fab btn-icon btn-round" data-toggle="modal"
                        data-target="#infoplace-{{$tp->id}}">
                    <i class="now-ui-icons travel_info"></i>
                </button>
                <button class="btn btn-warning btn-fab btn-icon btn-round" data-toggle="modal"
                        data-target="#edit-placetype{{$tp->id}}">
                    <i class="now-ui-icons ui-2_settings-90"></i>
                </button>
                <a class="btn btn-danger btn-fab btn-icon btn-round" type="submit"
                   href="{{route('admin.xoa-loai',[$tp->id])}}"
                   onclick="return confirm('Bạn chắc chắn muốn xóa không?')">
                    <i class="now-ui-icons ui-1_simple-remove"></i>
                </a>
            </td>
        </tr>
    @endforeach
    </tbody>
</table>
