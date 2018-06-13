@extends('admin.master')

@section('content')
<div class="content">
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title title">Thêm địa điểm mới</h4>
                </div>
                <div class="card-body">
                    <form action="">
                        <div class="row">
                            <div class="col-6 ">
                                <div class="form-group">
                                    <label for="name">Tên</label>
                                    <input type="text" name="name" value="" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label for="type">Loại</label>
                                    <select name="type" id="type" class="form-control" style="border-radius: 30px">
                                        <option value="">---Chọn loại---</option>
                                        @foreach($place_type as $pt)
                                            <option value="{{$pt->id}}">{{$pt->name}}</option>
                                        @endforeach
                                    </select>
                                </div>

                                <div class="form-group">
                                    <label for="city">Thành phố</label>
                                    <select name="city" id="city" class="form-control">
                                        <option value="">---Chọn thành phố---</option>
                                        @foreach($city as $c)
                                        <option value="{{$c->id}}">{{$c->name}}</option>
                                        @endforeach
                                    </select>
                                </div>
                                <input type="hidden" name="_token" value="{{csrf_token()}}">
                                <div class="form-group">
                                    <label for="city">Quận/Huyện</label>
                                    <select name="district" id="district" class="form-control">
                                        <option value="0">---Chọn Quận/Huyện---</option>
                                        {{--@foreach($district as $d)--}}
                                        {{--<option value="{{$d->id}}">{{$d->name}}</option>--}}
                                        {{--@endforeach--}}
                                    </select>
                                </div>

                                <script>
                                    $("#city").change(function () {
                                        var id = $("#city").val();
                                        var _token = $('input[name="_token"]').val();
                                        // $.get("tp", {
                                        //     id: id, token: _token
                                        // }, function (data) {
                                        //     console.log(data);
                                        //     // $(".district").html(data);
                                        //     alert(data);
                                        // });
                                        $.ajax({
                                            type: "GET",
                                            url: "get-tp",
                                            dataType: "json",
                                            data: {token: _token, id: id},
                                            success: function(data){
                                                console.log(data);
                                                alert(data);
                                            }
                                        });
                                    });
                                </script>

                            </div>
                            <div class="col-6">
                                <div class="form-group">
                                    <label for="address">Địa chỉ</label>
                                    <input type="text" name="address" value="" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label for="address">Link Nhúng Google Map <i class="now-ui-icons travel_info" title="Chọn chức năng chia sẻ địa điểm trong Google Map -> Nhúng bản đồ"></i></label>
                                    <input type="link" name="map" value="" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label for="address">Toạ độ (VD: 10.047741, 105.772110)</label>
                                    <input type="text" name="coor" value="" class="form-control">
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="form-group">
                                    <label for="full_des">Mô tả ngắn gọn (khoảng 50 từ)</label>
                                    <textarea rows="5" class="form-control" value="" id="short_des" name="short_des"></textarea>
                                </div>
                                <div class="form-group">
                                    <label for="short_des">Mô tả đầy đủ</label>
                                    <textarea rows="5" class="form-control" placeholder="Khoảng 50 từ" value="" id="full_des" name="full_des"></textarea>
                                </div>

                                <script>
                                    CKEDITOR.replace('short_des');
                                    CKEDITOR.replace('full_des');
                                </script>

                                <div class="form-group">
                                    <label for="images">Hình ảnh: </label>
                                    <div class="">
                                        <button class="btn btn-primary btn-fab btn-icon btn-round" style="cursor: pointer">
                                               <i class="now-ui-icons ui-1_simple-add"></i> 
                                                <input type="file" multiple id="gallery-photo-add" name="images[]" accept="image/png, image/jpg, image/jpeg">
                                        </button>
                                    </div>
                                    <div class="gallery"></div>
                                </div>
                                <script>
                                    $(function() {
                                        var imagesPreview = function(input, placeToInsertImagePreview) {
                                            if (input.files) {
                                                var filesAmount = input.files.length;
                                                for (i = 0; i < filesAmount; i++) {
                                                    var reader = new FileReader();
                                                    reader.onload = function(event) {
                                                        $($.parseHTML('<img>')).attr('src', event.target.result).appendTo(placeToInsertImagePreview);
                                                    }
                                                    reader.readAsDataURL(input.files[i]);
                                                }
                                            }
                                        };
                                        $('#gallery-photo-add').on('change', function() {
                                            $('.gallery').empty();
                                            imagesPreview(this, 'div.gallery');
                                        });
                                    });
                                </script>
                            </div>
                        </div>
                        <div class="text-center">
                            <button style="font-size: 15px" type="button" class="btn btn-round">Quay lại</button>
                            <button style="font-size: 15px" type="submit" class="btn btn-primary btn-round">Thêm địa điểm</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection