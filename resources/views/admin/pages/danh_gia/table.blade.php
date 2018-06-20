<div class="table-responsive">
    <form action="{{route('admin.xoa-danh-gia-da-chon',[0])}}">
        {{ method_field('DELETE') }}
        {{ csrf_field() }}
        <table class="table" id="detail-fb-table">
            <thead class="bg-primary" style="font-size: 10px;color: #ffffff;">
            <tr>
                <th class="collapsing">
                    <div class="form-check">
                        <label class="form-check-label">
                            <input class="form-check-input" type="checkbox" id="checkall" onclick="fbCheckBox()">
                            <span class="form-check-sign">
                                        <span class="check"></span>
                                    </span>
                        </label>
                    </div>
                </th>
                <th>ID ĐÁNH GIÁ</th>
                <th class="text-center">SỐ ĐIỂM</th>
                <th class="text-center">THỜI ĐIỂM ĐÁNH GIÁ</th>
                <th class="text-right">THAO TÁC</th>
            </tr>
            </thead>
            <tbody>
            @foreach($chitiet as $ct)
                <tr>
                    <td class="collapsing">
                        <div class="form-check">
                            <label class="form-check-label">
                                <input class="form-check-input" type="checkbox" name="danh-gia-id[]"
                                       value="{{ $ct->fid }}">
                                <span class="form-check-sign">
                                        <span class="check"></span>
                                    </span>
                            </label>
                        </div>
                    </td>
                    <td>{{$ct ->fid}}</td>
                    <td class="text-center">
                        @component('customer.star_rating')
                            {{$ct -> fstar}}
                        @endcomponent
                    </td>
                    <td class="text-center">{{$ct ->fcreated_at . '-' . $ct ->fupdated_at}}</td>
                    <td class="td-actions text-right">
                        <button class="btn btn-danger btn-fab btn-icon btn-round" type="button"
                                data-toggle="modal" data-target="#modal-delete-{{$ct ->fid}}">
                            <i class="now-ui-icons ui-1_simple-remove"></i>
                        </button>
                    </td>
                </tr>
            @endforeach
            </tbody>
        </table>
        @include('admin.pages.loai_dia_diem.modalAllDelete')
    </form>
    {{--<div class="div-pagination" style="padding-left: 40%!important;">--}}
    {{--{{ $chitiet->links() }}--}}
    {{--</div>--}}
</div>

