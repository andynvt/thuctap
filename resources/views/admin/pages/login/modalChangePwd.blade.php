<div class="modal fade" id="changePass" tabindex="-1" role="dialog" aria-labelledby="changePass" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="modal-title text-black-50 title" id="list-type" style="font-size: 16px">Đổi mật khẩu</h3>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="{{route('admin.changePass')}}" method="get">
                    {{ csrf_field() }}
                    <div class="form-group">
                        <label class="bmd-label-floating">Mật khẩu cũ</label>
                        <input type="password" class="form-control" name="oldpass" id="oldpass"
                               placeholder="Nhập mật khẩu..." minlength="5" required>
                    </div>
                    <div class="form-group">
                        <label class="bmd-label-floating">Mật khẩu mới</label>
                        <input type="password" class="form-control" name="password" id="password"
                               placeholder="Nhập mật khẩu mới..." minlength="5" required>
                    </div>
                    <div class="form-group">
                        <label class="bmd-label-floating">Nhập lại mật khẩu</label>
                        <input type="password" class="form-control" name="password_confirmation" id="password_confirmation"
                               placeholder="Nhập lại mật khẩu..." minlength="5" required>
                    </div>

                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary btn-round" data-dismiss="modal">ĐÓNG</button>
                        <span></span>
                        <button class="btn btn-primary btn-round" name="add-emp"
                                onclick="">LƯU LẠI
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>