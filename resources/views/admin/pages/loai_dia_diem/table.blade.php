<table class="table">
    <thead class="bg-primary " style="font-size: 10px;color: #ffffff;">
    <th class="collapsing">
        <div class="ui checkbox" id="chon-het-loai-dia-diem" >
            <input type="checkbox" id="checkall" class="hidden">
        </div>
    </th>
    <th class="text-center">STT</th>
    <th>TÊN LOẠI DU LỊCH</th>
    <th>MÔ TẢ</th>
    <th class="text-center">THAO TÁC</th>
    </thead>
    <tbody>
    @foreach($placeType as $stt =>$tp)
        <tr>
            <td class="collapsing">
                <div class="ui child checkbox">
                    <input type="checkbox" class="checkitem" name="loai-dia-diem-id[]" value="{{ $tp->id }}">
                </div></td>
            <td class="text-center">{{$stt +1}}</td>
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
                <button class="btn btn-danger btn-fab btn-icon btn-round" type="submit">
                <a class="a-delete"
                   href="{{route('admin.xoa-loai',[$tp->id])}}"
                   onclick="return confirm('Bạn chắc chắn muốn xóa không?')">
                    <i class="now-ui-icons ui-1_simple-remove"></i>
                </a>
                </button>
            </td>
        </tr>
    @endforeach
    </tbody>
</table>
