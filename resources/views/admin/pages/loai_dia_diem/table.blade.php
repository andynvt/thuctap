<form action="" method="get">
    <table class="table">
        <thead class="bg-primary " style="font-size: 10px;color: #ffffff;">
        <th class="collapsing">
            <div class="form-check">
                <label class="form-check-label">
                    <input class="form-check-input" type="checkbox" id="checkall" onclick="eventCheckBox()">
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
        @foreach($placeType as $stt =>$tp)
            <tr>
                <td class="collapsing">
                    <div class="form-check">
                        <label class="form-check-label">
                            <input class="form-check-input" type="checkbox" name="loai-dia-diem-id[]"
                                   value="{{ $tp->id }}">
                            <span class="form-check-sign">
                                        <span class="check"></span>
                                    </span>
                        </label>
                    </div>
                </td>
                <td class="text-center">{{$stt +1}}</td>
                <td>{{$tp -> name}}</td>
                <td>{{$tp -> description}}</td>
                <td class="td-actions text-center">
                    <a class="btn btn-info btn-fab btn-icon btn-round a-white"
                       onclick="$('{{ "#infoplace-" . $tp->id }}').modal('show')">
                        <i class="now-ui-icons travel_info"></i>
                    </a>
                    <a class="btn btn-warning btn-fab btn-icon btn-round a-white"
                       onclick="$('{{ "#edit-placetype" . $tp->id }}').modal('show')">
                        <i class="now-ui-icons ui-2_settings-90"></i>
                    </a>
                    <a class="a-white btn btn-danger btn-fab btn-icon btn-round"
                           href="{{route('admin.xoa-loai',[$tp->id])}}"
                           onclick="return confirm('Bạn chắc chắn muốn xóa không?')">
                            <i class="now-ui-icons ui-1_simple-remove"></i>
                    </a>
                </td>
            </tr>
        @endforeach
        </tbody>
    </table>
</form>
<script>
    function eventCheckBox() {
        let checkboxs = document.getElementsByName("loai-dia-diem-id[]");
        let checkAll = document.getElementById('checkall');
        for (let i = 0; i < checkboxs.length; i++) {
            checkboxs[i].checked = checkAll.checked;
        }
    }
</script>