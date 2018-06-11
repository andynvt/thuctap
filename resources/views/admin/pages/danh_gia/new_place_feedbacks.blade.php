
@foreach($notify_fb as $nfb)
    <div class="col-3 p-fb-item">
        <div class="ribbon">
            <p class="text-center p-ribbon">{{$nfb->where('id_place',$nfb->pid)->count()}}</p>
        </div>
        <div class="div-fb-item">
            <a href="{{route('admin.chi-tiet-danh-gia',[$nfb->pid])}}">
                <div class="fb-item">
                    <div class="fb-img-item ">
                        <img src="storage/image/{{$nfb -> iname}}">
                    </div>
                    <div class="fb-content-item">
                        {{$nfb ->pname}}
                    </div>
                </div>
            </a>
        </div>
    </div>
@endforeach