<nav class="navbar navbar-color-on-scroll fixed-top navbar-expand-lg bg-primary" color-on-scroll="100" id="sectionsNav">
    <div class="container">
        <div class="navbar-translate">
            <a class="navbar-brand" style="font-weight: 400" href="{{ route('intro') }}">TRANG CHỦ</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" aria-expanded="false">
                <span class="navbar-toggler-icon"></span>
                <span class="navbar-toggler-icon"></span>
                <span class="navbar-toggler-icon"></span>
            </button>
        </div>
        <div class="collapse navbar-collapse">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <div class="dropdown dropdown-city" style="float:left;">
                       <a class="nav-link dropbtn"><i class="material-icons">apps</i>Thành phố</a>
                        <div class="dropdown-content">
                            <div class="row col-12">
                                @foreach(App\City::all() as $c20)
                                    <div class="col-md-3 col-4 city-name">
                                        <ul class="float-left" style="padding-left: 5px; ">
                                            <li class="nav-item" style="font-size: 12px">
                                                <a href="{{route('customer.thanh-pho',[$c20->id,1])}}">
                                                    {{$c20->name}}
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                @endforeach
                            </div>

                        </div>
                    </div>
                </li>
                <li class="nav-item">
                    <!-- form search -->
                    <a href="#home-search-form" class="nav-link"><i class="material-icons">search</i>Tìm kiếm</a>
                    <div id="home-search-form">
                        <button type="button" class="close">×</button>
                        <form action="{{route('customer.tim-kiem')}}" method="get">
                            <input type="search" name="data" value="" placeholder="Nhập địa điểm cần tìm" />
                            <button type="submit" class="btn btn-primary">Search</button>
                        </form>
                    </div>
                    <!-- end form search -->
                </li>
            </ul>
        </div>
    </div>
</nav>