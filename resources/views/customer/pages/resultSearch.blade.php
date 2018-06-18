@extends('customer.master')

@section('header')
    @include('customer.header')
@endsection
<title>
    Phổ biến | Tour Guide
</title>
@section('content')
    <div class="list_place">
        <div class="page-header header-filter clear-filter purple-filter" data-parallax="true"
             style="background-image: url('storage/image/bg-search.jpg');">
            <div class="container">
                <div class="row">
                    <div class="col-md-8 ml-auto mr-auto">
                        <div class="brand text-center">
                            <h2 class="title-bg">TÌM KIẾM</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!--Main container-->
        <div class="main main-raised">
            <div class="row" style=" padding-top:20px; margin-left: 0; margin-right: 15px;">
                <div class="col-md-8 col-lg-8 col-xl-8 col-sm-12 col-list-place">
                    <div class="card card-nav-tabs">
                        <div class="card-header card-header-primary title-top-main">
                            <!-- colors: "header-primary", "header-info", "header-success", "header-warning", "header-danger" -->
                            <div class="nav-tabs-navigation">
                                <div class="nav-tabs-wrapper">
                                    <ul class="nav nav-tabs" data-tabs="tabs">
                                        <li class="nav-item"><h4 class="title-view">View &nbsp;</h4></li>
                                        <li class="nav-item" id="liList">
                                            <a class="nav-link title-tab-place active" href="#viewList"
                                               data-toggle="tab">
                                                <i class="material-icons">view_list</i>
                                            </a>
                                        </li>
                                        <li class="nav-item" id="liModule">
                                            <a class="nav-link title-tab-place" href="#viewModule" data-toggle="tab">
                                                <i class="material-icons">view_module</i>
                                            </a>
                                        </li>
                                        <li class="nav-item">
                                        </li>
                                        <li class="dropdown nav-item" id="sort-1">
                                            <a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown">
                                                <i class="material-icons">sort</i> Sắp xếp
                                            </a>
                                            <div class="dropdown-menu dropdown-with-icons">
                                                <a href="#" class="dropdown-item">
                                                    <i class="material-icons">near_me</i> Gần nhất
                                                </a>
                                                <a href="{{route('customer.pho-bien')}}" class="dropdown-item">
                                                    <i class="material-icons">favorite</i> Phổ biến
                                                </a>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="card-body" style="padding: 15px;">
                            <div class="tab-content">
                                <div class="tab-pane active col-12" id="viewList">
                                    {{--section favorite place--}}
                                    <section class="list-place" id="favorite-place">
                                        <div class="title-dl ">
                                            <h3 class="text-primary" style="text-transform: uppercase">Kết quả tìm
                                                kiếm</h3>
                                        </div>
                                        <hr class="text-primary" style="border: 2px solid">
                                        @if($total > 0)
                                            @foreach($place as $p)
                                                <div class="item-place">
                                                    <div class="row">
                                                        <div class="col-6 img-div">
                                                            <a href="{{ route('detailplace',[$p ->pid]) }}"><img
                                                                        src="storage/image/{{$p -> piname}}"
                                                                        alt="{{$p -> pname}}"
                                                                        class="img-raised rounded img-fluid a-img"></a>
                                                        </div>
                                                        <div class="col-6 float-left">
                                                            <h3 style="margin-top: 0"><a
                                                                        href="{{ route('detailplace',[$p -> pid]) }}">{{$p -> pname}}
                                                                    <br></a>
                                                            </h3>
                                                            <div class="short-des">
                                                                {!! $p->short_des !!}
                                                            </div>
                                                            <br>
                                                            @component('customer.star_rating')
                                                                {{number_format((float)\App\Feedback::where('id_place',$p -> pid)->avg('star'),2,'.','')}}
                                                            @endcomponent
                                                            <p class="p-place">
                                                                &nbsp;&nbsp;<b>{{number_format((float)\App\Feedback::where('id_place',$p -> pid)->avg('star'),2,'.','')}}
                                                                    /5</b>
                                                                trong
                                                                <b>{{\App\Feedback::where('id_place',$p -> pid)->count('star')}}</b>
                                                                ĐÁNH GIÁ
                                                            </p>

                                                            <div class="readMore float-right">
                                                                <a href="{{ route('detailplace',[$p ->pid]) }}"
                                                                   class="btn btn-primary btn-round btn-sm">
                                                                    <i class="material-icons">details</i>Xem chi
                                                                    tiết<span
                                                                            class="badge badge-pill badge-primary"></span></a>

                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <hr>
                                            @endforeach
                                            <div class="div-pagination" style="padding-left: 40%!important;">
                                                {{ $place->links() }}
                                            </div>
                                        @else
                                            <h4 class="text-center text-black-50">Không tìm thấy dữ liệu!</h4>
                                        @endif
                                    </section>
                                </div>
                                <div class="tab-pane col-12" id="viewModule">

                                    {{--view module favorite place--}}
                                    <section class="list-place" id="favorite-place-1">
                                        <div class="title-dl ">
                                            <h3 class="text-primary" style="text-transform: uppercase">Kết quả tìm
                                                kiếm</h3>
                                        </div>
                                        <hr class="text-primary" style="border: 2px solid">
                                        <div class="row">
                                            @if($total > 0)
                                                @foreach($place as $ps)
                                                    <div class="col-12 col-md-6 col-xl-6">
                                                        <div class="card">
                                                            <div class="card-header-image img-div">
                                                                <a href="{{ route('detailplace',[$ps ->pid]) }}"><img
                                                                            src="storage/image/{{$ps -> piname}}"
                                                                            alt="{{$ps -> pname}}"
                                                                            class="img-raised rounded img-fluid a-img"></a>
                                                            </div>
                                                            <div class="card-body div-body">
                                                                <h5 class="card-title"><a
                                                                            href="{{ route('detailplace',[$ps ->pid]) }}">{{$ps -> pname}}
                                                                        <br></a></h5>
                                                                <div class="short-des">
                                                                    {!! $ps -> short_des !!}
                                                                    <br>
                                                                </div>
                                                                @component('customer.star_rating')
                                                                    {{number_format((float)\App\Feedback::where('id_place',$ps -> pid)->avg('star'),2,'.','')}}
                                                                @endcomponent
                                                                <p class="p-place">
                                                                    &nbsp;&nbsp;<b>{{number_format((float)\App\Feedback::where('id_place',$ps -> pid)->avg('star'),2,'.','')}}
                                                                        /5</b> trong
                                                                    <b>{{\App\Feedback::where('id_place',$ps -> pid)->count('star')}}</b>
                                                                    ĐÁNH GIÁ</p>

                                                            </div>
                                                            <div class="card-footer div-footer">
                                                                <a href="{{ route('detailplace',[$ps ->pid]) }}"
                                                                   class="btn btn-primary btn-round btn-sm">
                                                                    <i class="material-icons">details</i>Xem chi
                                                                    tiết<span
                                                                            class="badge badge-pill badge-primary"></span></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                @endforeach
                                                <div class="div-pagination" style="padding-left: 40%!important;">
                                                    {{ $place->links() }}
                                                </div>
                                            @else
                                                <h4 class="text-center text-black-50">Không tìm thấy dữ liệu!</h4>
                                            @endif
                                        </div>
                                    </section>

                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- End Tabs with icons on Card -->
                </div>
                <div class="col-md-4 col-lg-4 col-xl-4 col-sm-12 card col-card-top">
                    <div class="title-top card-header card-header-primary text-center">
                        <h3 style="text-transform: uppercase">TOP ĐỊA ĐIỂM LIÊN QUAN</h3>
                    </div>
                    <br>
                    <div class="col-12 content-top text-center">
                        @if($total > 0)
                            @foreach($same_place as $rstop)
                                <div class="item-top ">
                                    <div class="img-top">
                                        <a href="{{ route('detailplace',[$rstop ->pid]) }}"><img
                                                    src="storage/image/{{$rstop -> piname}}" alt="{{$rstop -> pname}}"
                                                    class="img-raised rounded img-fluid a-img"></a>
                                    </div>
                                    <div class="">
                                        <p class="h4-top"><a
                                                    href="{{ route('detailplace',[$rstop ->pid]) }}">{{$rstop -> pname}}</a>
                                        </p>
                                    </div>
                                </div>
                                <hr>
                            @endforeach
                        @else
                            <h4 class="text-center text-black-50">Không tìm thấy dữ liệu!</h4>
                        @endif
                    </div>
                </div>
            </div>
        </div><!--End main-->
    </div> <!-- End list place -->
@endsection

@section('footer')
    @include('customer.footer')
@endsection
