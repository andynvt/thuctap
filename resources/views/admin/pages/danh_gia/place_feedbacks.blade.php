
@foreach($danhGia as $dg)
    <div class="col-3 p-fb-item">
        <div class="div-fb-item" >
            <a href="{{route('admin.chi-tiet-danh-gia',[$dg->pid])}}">
                <div class="fb-item">
                    <div class="fb-img-item ">
                        <img src="storage/image/{{$dg -> iname}}">
                    </div>
                    <div class="fb-content-item">
                        {{$dg ->pname}}
                    </div>
                </div>
            </a>
        </div>
    </div>
@endforeach