<nav class="navbar navbar-color-on-scroll fixed-top navbar-expand-lg bg-primary" color-on-scroll="100" id="sectionsNav">
    <div class="container">
        <div class="navbar-translate">
            <a class="navbar-brand" href="{{ route('intro') }}">TRANG CHỦ</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" aria-expanded="false">
                <span class="navbar-toggler-icon"></span>
                <span class="navbar-toggler-icon"></span>
                <span class="navbar-toggler-icon"></span>
            </button>
        </div>
        <div class="collapse navbar-collapse">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                <div class="dropdown" style="float:left;">
                   <a class="nav-link dropbtn"><i class="material-icons">apps</i>Thành phố</a>
                    <div class="dropdown-content">
                        <div class="row col-12">
                            <div class="col-3" >
                                <ul class="float-left" style="padding-left: 5px; ">
                                    @foreach(App\City::where('id','<=','20')->get() as $c20)
                                        <li class="nav-item" style="font-size: 12px">
                                            <a href="{{route('customer.thanh-pho',[$c20 ->id,1])}}"
                                               data-toggle="tooltip" data-placement="right" title="{{$c20 -> name}}">
                                                <i class="material-icons" style="font-size: 12px">location_city</i>
                                                {{$c20 ->name}}</a>
                                        </li>
                                    @endforeach
                                </ul>
                            </div>
                            <div class="col-3" >
                                <ul class="float-left" style="padding-left: 5px; ">
                                    @foreach(App\City::where([['id','>','20'],['id','<=','40']])->get() as $c40)
                                        <li class="nav-item" style="font-size: 12px">
                                            <a href="{{route('customer.thanh-pho',[$c40 ->id,1])}}"
                                               data-toggle="tooltip" data-placement="right" title="{{$c40 -> name}}">
                                                <i class="material-icons" style="font-size: 12px">location_city</i>
                                                {{$c40 ->name}}</a>
                                        </li>
                                    @endforeach
                                </ul>
                            </div>
                            <div class="col-3" >
                                <ul class="float-left" style="padding-left: 5px; ">
                                    @foreach(App\City::where([['id','>','40'],['id','<=','60']])->get() as $c60)
                                        <li class="nav-item" style="font-size: 12px">
                                            <a href="{{route('customer.thanh-pho',[$c60 ->id,1])}}"
                                               data-toggle="tooltip" data-placement="right" title="{{$c60 -> name}}">
                                                <i class="material-icons" style="font-size: 12px">location_city</i>
                                                {{$c60 ->name}}</a>
                                        </li>
                                    @endforeach
                                </ul>
                            </div>
                            <div class="col-3" >
                                <ul class="float-left" style="padding-left: 5px; ">
                                    @foreach(App\City::where('id','>','60')->get() as $c)
                                        <li class="nav-item" style="font-size: 12px">
                                            <a href="{{route('customer.thanh-pho',[$c ->id,1])}}"
                                               data-toggle="tooltip" data-placement="right" title="{{$c -> name}}">
                                                <i class="material-icons" style="font-size: 12px">location_city</i>
                                                {{$c ->name}}</a>
                                        </li>
                                    @endforeach
                                </ul>
                            </div>

                        </div>


                    </div>
                </div>
                </li>
                {{--@foreach(\App\Place_Type::all() as $type)--}}
                {{--<li class="nav-item">--}}
                    {{--<a class="nav-link " href="{{route('customer.loai-dia-diem',[$type->id])}}"--}}
                       {{--data-toggle="tooltip" data-placement="bottom" title="{{$type -> name}}">--}}
                        {{--<i class="material-icons">place</i>{{$type -> name}}</a>--}}
                {{--</li>--}}
                {{--@endforeach--}}
                <form class="form-inline ml-auto" action="{{route('customer.tim-kiem')}}" method="get">

                    <div class="form-group has-white">
                        <input type="text" class="form-control" name="data" placeholder="Tìm kiếm...">
                    </div>
                    <button type="submit" class="btn btn-white btn-raised btn-fab btn-round">
                        <i class="material-icons">search</i>
                    </button>
                </form>
            </ul>
        </div>
    </div>
</nav>