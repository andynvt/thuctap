{{--Modal delete--}}
@foreach($chitiet as $ct)
    <div class="modal fade" id="modal-delete-{{$ct->fid}}" tabindex="-1" role="dialog" aria-labelledby="delete" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title title " id="delete">Bạn chắc chắn muốn xóa phải không?</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <p class="text-black-50">Các dữ liệu liên quan đến sẽ bị xóa hoàn toàn. Bạn cần suy nghĩ trước khi xóa?</p>
                </div>
                <div class="modal-footer">
                    <form action="{{route('admin.xoa-danh-gia',[$ct->fid])}}">
                        {{ method_field('DELETE') }}
                        {{ csrf_field() }}
                        <button type="button" class="btn btn-secondary btn-round" data-dismiss="modal">ĐÓNG</button>
                        <button type="submit" class="btn btn-primary btn-round" onclick="return successMessage('success','Xóa thành công!')">OK</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endforeach
<!--  End Modal -->