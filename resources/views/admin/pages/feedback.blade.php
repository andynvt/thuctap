@extends('admin.master')

@section('content')
<div class="content fb-content">
    <div class="card">
        <div class="row">
            <div class="col-12 fb-type clearfix">
                <h3>Loại hình:</h3>
                <div class="row fb-type-title">
                    @foreach(\App\Place_Type::all() as $type)
                    <div class="col-3">
                        <button class="btn btn-primary btn-round " href="#list-feedbacks" onclick="$('')">
                            <input type="hidden" id="btn-loai" name="btn-loai" value="{{$type ->id}}">
                            <i class="fa fa-map-marker"></i> {{$type ->name}}
                        </button>
                    </div>
                    @endforeach
                </div>
            </div>
            <hr>
            <div class="col-12 fb-info clearfix" id="list-place-{{$type ->id}}">
                <div class="row">
                    @foreach($danhGia as $dg)
                    <div class="col-3 p-fb-item">
                        <a href="{{route('adminchitietdanhgia')}}">
                            <div class="fb-item">
                                <div class="fb-img-item">
                                    <img src="storage/image/{{$dg -> iname}}">
                                </div>
                                <div class="fb-content-item">
                                    {{$dg ->pname}}
                                </div>
                            </div>
                        </a>
                    </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
{{--@section('content')--}}
{{--<div class="tab">--}}
    {{--@foreach(\App\Place_Type::all() as $type)--}}
    {{--<button class="tablinks" onclick="openCity(event, 'London-{{$type->id}}')">{{$type->name}}</button>--}}
{{--</div>--}}

{{--<div id="London" class="tabcontent">--}}
    {{--<h3>London</h3>--}}
    {{--<p>London is the capital city of England.</p>--}}
{{--</div>--}}

{{--<div id="Paris" class="tabcontent">--}}
    {{--<h3>Paris</h3>--}}
    {{--<p>Paris is the capital of France.</p>--}}
{{--</div>--}}

{{--<div id="Tokyo" class="tabcontent">--}}
    {{--<h3>Tokyo</h3>--}}
    {{--<p>Tokyo is the capital of Japan.</p>--}}
{{--</div>--}}
{{--@endsection--}}
<script>
    function openCity(evt, cityName) {
        var i, tabcontent, tablinks;
        tabcontent = document.getElementsByClassName("tabcontent");
        for (i = 0; i < tabcontent.length; i++) {
            tabcontent[i].style.display = "none";
        }
        tablinks = document.getElementsByClassName("tablinks");
        for (i = 0; i < tablinks.length; i++) {
            tablinks[i].className = tablinks[i].className.replace(" active", "");
        }
        document.getElementById(cityName).style.display = "block";
        evt.currentTarget.className += " active";
    }
</script>