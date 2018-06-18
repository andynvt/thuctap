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
                @foreach(\App\Place_Type::all() as $type)
                <li class="nav-item">
                    <a class="nav-link " href="{{route('customer.loai-dia-diem',[$type->id])}}"
                       data-toggle="tooltip" data-placement="bottom" title="{{$type -> name}}">
                        <i class="material-icons">place</i>{{$type -> name}}</a>
                </li>
                @endforeach
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