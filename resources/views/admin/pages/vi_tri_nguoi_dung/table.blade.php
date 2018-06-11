<table class="table hover-table">
    <thead class="bg-primary " style="font-size: 10px;color: #ffffff;">
    <th style="width: 5%">
        <div class="form-check">
            <label class="form-check-label check-form">
                <input class="form-check-input" type="checkbox" id="selectall" onclick="checkBoxAll()">
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
                        <input class="form-check-input" type="checkbox" name="vi-tri-id[]" value="{{$ul ->id}}">
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
                <a class="btn btn-info btn-fab btn-icon btn-round a-white"
                   onclick="$('{{"#view-location-" . $ul ->id}}').modal('show')">
                    <i class="now-ui-icons location_pin"></i>
                </a>
            </td>
            <td class="text-center">
                <a class="btn btn-danger btn-fab btn-icon btn-round a-white"
                   href="{{route('admin.xoa-vi-tri',[$ul->id])}}"
                   onclick="return confirm('Bạn chắc chắn muốn xóa không?')">
                    <i class="now-ui-icons ui-1_simple-remove"></i>
                </a>
            </td>
        </tr>
    @endforeach
    </tbody>
</table>
<div class="div-pagination" style="padding-left: 40%!important;">
    {{ $userLocation->links() }}
</div>
<script>
    function checkBoxAll() {
        let checkboxs = document.getElementsByName("vi-tri-id[]");
        let checkAll = document.getElementById('selectall');
        for (let i = 0; i < checkboxs.length; i++) {
            checkboxs[i].checked = checkAll.checked;
        }
    }
</script>