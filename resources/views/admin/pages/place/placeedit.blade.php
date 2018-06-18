@extends('admin.master')

@section('content')
<div class="content">
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title title">Sửa thông tin <i>{{$info[0]->name}}</i></h4>
                </div>
                <div class="card-body">
                    <form action="">
                        <div class="row">
                            <div class="col-6 ">
                                <div class="form-group">
                                    <label for="name">Tên</label>
                                    <input type="text" name="name" value="{{$info[0]->name}}" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label for="name">Slogan</label>
                                    <input type="text" name="slogan" value="{{$info[0]->slogan}}" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label for="type">Loại</label>
                                    <select name="type" id="type" class="form-control round">
                                        @foreach($place_type as $pt)
                                            @if($info[0]->id_type == $pt->id)
                                                <option value="{{$id_type}}" selected>{{$type_name}}</option>
                                            @else
                                                <option value="{{$pt->id}}">{{$pt->name}}</option>
                                            @endif
                                        @endforeach
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="address">Link Google Map</label>
                                    <input type="link" name="map" value="{{$info[0]->map}}" class="form-control">
                                </div>

                            </div>
                            <div class="col-6">
                                <div class="form-group">
                                    <label for="address">Địa chỉ</label>
                                    <input type="text" name="address" value="{{$info[0]->address}}" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label for="city">Thành phố</label>
                                    <select name="city" id="city" class="form-control">
                                        {{--@foreach($place_type as $pt)--}}
                                            {{--@if()--}}
                                                {{--<option value="{{$id_type}}" selected>{{$type_name}}</option>--}}
                                            {{--@else--}}
                                                {{--<option value="{{$pt->id}}">{{$pt->name}}</option>--}}
                                            {{--@endif--}}
                                        {{--@endforeach--}}
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="city">Quận Huyện</label>
                                    <select name="city" id="district" class="form-control">
                                        @foreach($district as $d)
                                            @if($info[0]->id_district == $d->id)
                                                <option value="{{$id_district}}" selected>{{$dname}}</option>
                                            @else
                                                <option value="{{$d->id}}">{{$d->name}}</option>
                                            @endif
                                        @endforeach
                                    </select>
                                </div>

                                <div class="form-group">
                                    <label for="address">Toạ độ</label>
                                    <input type="text" name="coor" value="{{$info[0]->coor}}" class="form-control">
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="form-group">
                                    <label for="full_des">Mô tả ngắn gọn (khoảng 50 từ)</label>
                                    <textarea rows="5" class="form-control" id="short_des" name="short_des">{{$info[0]->short_des}}</textarea>
                                </div>
                                <div class="form-group">
                                    <label for="short_des">Mô tả đầy đủ</label>
                                    <textarea rows="5" class="form-control" placeholder="Khoảng 50 từ" id="full_des" name="full_des">{{$info[0]->full_des}}</textarea>
                                </div>

                                <script>
                                    CKEDITOR.replace('short_des');
                                    CKEDITOR.replace('full_des');
                                </script>


                                <div class="form-group">
                                    <label for="images">Thêm ảnh mới: </label>
                                    <div class="">
                                        <button class="btn btn-primary btn-fab btn-icon btn-round" style="cursor: pointer">
                                            <i class="now-ui-icons ui-1_simple-add"></i>
                                            <input type="file" multiple id="gallery-photo-add" name="images[]" accept="image/png, image/jpg, image/jpeg">
                                        </button>
                                    </div>
                                    <div class="gallery"></div>
                                </div>
                                <div class="form-group">
                                    <label for="images">Ảnh hiện tại: </label>
                                    <div class="">
                                        @foreach($img as $i)
                                            <div class="show-img">
                                                <img src="storage/image/{{$i->name}}">
                                                <i class="now-ui-icons ui-1_simple-remove" data-toggle="tooltip" title="Xoá"></i>
                                                <input type="hidden" value="{{$i->id}}">
                                            </div>
                                        @endforeach
                                    </div>
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
                                    function submitForm() {
                                        return confirm('Bạn có chắc muốn xoá?');
                                    }
                                    $('.show-img i').on('click', function(){
                                        var iid = $(this).next('input').val();
                                        {{--var token = '{{csrf_token()}}';--}}
                                        var delimg = submitForm();
                                        alert(iid);
                                        if(delimg == true){
                                            alert('h');
                                            $.ajax({
                                                type: "GET",
                                                dataType: 'json',
                                                url: "delimg",
                                                data: {iid: iid},
                                                success: function(data){
                                                    console.log(data);
                                                    // location.reload();
                                                }
                                            });
                                            $(this).parents('.show-img').remove();
                                        }
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