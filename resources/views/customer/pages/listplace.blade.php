@extends('customer.master')

@section('header')
    @include('customer.header')
@endsection
<title>
    {{$title_city->name}} | Tour Guide
</title>
@section('content')
    <div class="list_place">
        @if($total> 0)
            @foreach($bg_img as $bg)
            <div class="page-header header-filter clear-filter purple-filter" data-parallax="true"
                 style="background-image: url('storage/image/{{$bg->piname}}');">
                @endforeach
                @else
                    <div class="page-header header-filter clear-filter purple-filter" data-parallax="true"
                         style="background: #9c27b0;">
                @endif
                <div class="container">
                    <div class="row">
                        <div class="col-md-8 ml-auto mr-auto">
                            <div class="brand text-center">
                                <h2 class="title-bg">{{$title_city->name}}</h2>
                                <h5 class="h5-bg">{!! $title_city->slg !!}</h5>
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
                            <div class="card-header menu_card card-header-primary title-top-main" id="" style="height: 67px;">
                                <!-- colors: "header-primary", "header-info", "header-success", "header-warning", "header-danger" -->
                                <div class="nav-tabs-navigation">
                                    <div class="nav-tabs-wrapper">
                                        <ul class="nav nav-tabs" data-tabs="tabs">
                                                <div class="col-md-8">
                                                    <ul class="nav nav-tabs" data-tabs="tabs">
                                                    @foreach(App\Place_Type::all() as $type)
                                                        <li class="nav-item">
                                                            <a id="title-menu" class="nav-link {{ (\Illuminate\Support\Facades\Request::is("thanh-pho/$id/$type->id"))?'active':'' }}"
                                                               href="{{route('customer.thanh-pho',[$id,$type->id])}}"
                                                               data-toggle="tooltip" data-placement="bottom" title="{{$type->name}}">
                                                                {{--<i class="material-icons">beach_access</i>--}}
                                                                {{$type->name}}
                                                            </a>
                                                        </li>
                                                    @endforeach
                                                    </ul>
                                                </div>
                                                <div class="col-md-4">
                                                    {{--<li class="nav-item" id="li-span"></li>--}}
                                                    <ul class="nav nav-tabs" data-tabs="tabs">
                                                    <li class="nav-item" >
                                                        <a id="liList" class="nav-link title-tab-place" href="#viewList"
                                                           data-toggle="tab" data-placement="bottom" title="Danh sách">
                                                            <i class="material-icons">view_list</i>
                                                        </a>
                                                    </li>
                                                    <li class="nav-item" >
                                                        <a id="liModule" class="nav-link title-tab-place" href="#viewModule"
                                                           data-toggle="tab" data-placement="bottom" title="module">
                                                            <i class="material-icons">view_module</i>
                                                        </a>
                                                    </li>
                                                    <li class="nav-item float-right" id="li-view"><h4 class="title-view">View
                                                        </h4></li>
                                                    </ul>
                                                </div>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body" style="padding: 15px;">
                                <div class="tab-content">
                                    @if($total > 0)
                                        <div class="tab-pane active col-12 list" id="viewList">
                                            <div class="title-dl ">
                                                <h3 class="text-primary" style="text-transform: uppercase">
                                                    {{$title_placeType->name}}
                                                </h3>
                                            </div>
                                            <hr class="text-primary" style="border: 2px solid">
                                            @foreach($result_dl as $rdl)
                                                <div class="item-place">
                                                    <div class="row">
                                                        <div class="col-6 img-div">
                                                            <a href="{{ route('detailplace',[$rdl ->pid]) }}"><img
                                                                        src="storage/image/{{$rdl -> piname}}"
                                                                        alt="{{$rdl -> pname}}"
                                                                        class="img-raised rounded img-fluid a-img"></a>
                                                        </div>
                                                        <div class="col-6 float-left">
                                                            <h3 style="margin-top: 0"><a
                                                                        href="{{ route('detailplace',[$rdl -> pid]) }}">{{$rdl -> pname}}
                                                                    <br></a>
                                                            </h3>
                                                            <div class="short-des">
                                                                {!! $rdl->short_des !!}
                                                            </div>
                                                            <br>
                                                            @component('customer.star_rating')
                                                                {{number_format((float)\App\Feedback::where('id_place',$rdl -> pid)->avg('star'),2,'.','')}}
                                                            @endcomponent
                                                            <p class="p-place">
                                                                &nbsp;&nbsp;<b>{{number_format((float)\App\Feedback::where('id_place',$rdl -> pid)->avg('star'),2,'.','')}}
                                                                    /5</b>
                                                                trong
                                                                <b>{{\App\Feedback::where('id_place',$rdl -> pid)->count('star')}}</b>
                                                                ĐÁNH GIÁ
                                                            </p>

                                                            <div class="readMore float-right">
                                                                <a href="{{ route('detailplace',[$rdl ->pid]) }}"
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
                                                {{ $result_dl->links() }}
                                            </div>
                                        </div>
                                        <div class="tab-pane col-12 module" id="viewModule">
                                            <section class="list-place" id="place-dl">
                                                <div class="title-dl ">
                                                    <h3 class="text-primary" style="text-transform: uppercase">
                                                        {{$title_placeType->name}}
                                                    </h3>
                                                </div>
                                                <hr class="text-primary" style="border: 2px solid">
                                                <div class="row">
                                                    @foreach($result_dl as $rslp)
                                                        <div class="col-12 col-md-6 col-xl-6">
                                                            <div class="card">
                                                                <div class="card-header-image img-div">
                                                                    <a href="{{ route('detailplace',[$rslp ->pid]) }}"><img
                                                                                src="storage/image/{{$rslp -> piname}}"
                                                                                alt="{{$rslp -> pname}}"
                                                                                class="img-raised rounded img-fluid a-img"></a>
                                                                </div>
                                                                <div class="card-body div-body">
                                                                    <h5 class="card-title"><a
                                                                                href="{{ route('detailplace',[$rslp ->pid]) }}">{{$rslp -> pname}}
                                                                            <br></a></h5>
                                                                    <div class="short-des">
                                                                        {!! $rslp -> short_des !!}
                                                                        <br>
                                                                    </div>
                                                                    @component('customer.star_rating')
                                                                        {{number_format((float)\App\Feedback::where('id_place',$rslp -> pid)->avg('star'),2,'.','')}}
                                                                    @endcomponent
                                                                    <p class="p-place">
                                                                        &nbsp;&nbsp;<b>{{number_format((float)\App\Feedback::where('id_place',$rslp -> pid)->avg('star'),2,'.','')}}
                                                                            /5</b> trong
                                                                        <b>{{\App\Feedback::where('id_place',$rslp -> pid)->count('star')}}</b>
                                                                        ĐÁNH GIÁ</p>

                                                                </div>
                                                                <div class="card-footer div-footer">
                                                                    <a href="{{ route('detailplace',[$rslp ->pid]) }}"
                                                                       class="btn btn-primary btn-round btn-sm">
                                                                        <i class="material-icons">details</i>Xem chi
                                                                        tiết<span
                                                                                class="badge badge-pill badge-primary"></span></a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    @endforeach
                                                    <div class="div-pagination" style="padding-left: 40%!important;">
                                                        {{ $result_dl->links() }}
                                                    </div>
                                                </div>
                                            </section>
                                        </div>
                                    @else
                                        <h4 class="text-center text-black-50">Không tìm thấy dữ liệu!</h4>
                                    @endif
                                </div>
                            </div>
                            <!-- End Tabs with icons on Card -->
                        </div>
                    </div>
                        <div class="col-md-4 col-lg-4 col-xl-4 col-sm-12 card col-card-top">
                            <div class="card-header card-header-primary title-top-main title-top text-center"
                                 style=" height: 67px;">
                                <h3 style="text-transform: uppercase;margin-top: 10px">TOP DU LỊCH HẤP DẪN</h3>
                            </div>
                            <br>
                            <div class="col-12 content-top text-center">
                                @if($total > 0)
                                @foreach($result_top as $rstop)
                                    <div class="item-top ">
                                        <div class="img-top">
                                            <a href="{{ route('detailplace',[$rstop ->pid]) }}"><img
                                                        src="storage/image/{{$rstop -> piname}}"
                                                        alt="{{$rstop -> pname}}"
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
    </div>
@endsection

@section('footer')
    @include('customer.footer')
@endsection
