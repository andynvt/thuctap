@extends('customer.master')

@section('header')
    @include('customer.header')
@endsection

@section('content')
<div class="list_place">
    <div class="page-header header-filter clear-filter purple-filter" data-parallax="true" style="background-image: url('storage/image/backgroup_listplace.jpg');">
        <div class="container">
            <div class="row">
                <div class="col-md-8 ml-auto mr-auto">
                    <div class="brand text-center">
                        <h2 class="title-bg">TP Cần Thơ</h2>
                        <h5 class="h5-bg" >Vùng đất Tây đô - Thủ phủ của miền Tây Nam Bộ <br>
                                Nơi hội tụ tinh hoa văn hóa dân tộc - nét đẹp miền sông nước không lẫn vào đâu hết </h5>
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
                                        <a class="nav-link title-tab-place active" href="#viewList" data-toggle="tab">
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
                                            <a href="#" class="dropdown-item">
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
                                <section class="list-place" id="place">
                                    <div class="title-dl ">
                                        <h3 class="text-primary" style="text-transform: uppercase">{{$title_place->name}}</h3>
                                    </div>
                                    <hr class="text-primary" style="border: 2px solid">
                                    @foreach($result_lp as $rlp)
                                    <div class="item-place">
                                        <div class="row">
                                            <div class="col-6 img-div" >
                                                <a href="{{ route('detailplace',[$rlp ->pid]) }}"><img src="storage/image/{{$rlp -> piname}}" alt="{{$rlp -> pname}}"
                                                                 class="img-raised rounded img-fluid a-img"></a>
                                                {{--@dd( route('detailplace',[$rlp ->pid]) }});--}}
                                            </div>
                                            <div class="col-6 float-left">
                                                <h3 style="margin-top: 0"><a href="{{ route('detailplace',[$rlp -> pid]) }}">{{$rlp -> pname}}<br></a>

                                                </h3>
                                                <p class="short-des"> {{$rlp -> short_des}}
                                                    <br>
                                                </p>
                                                <div class="star-place">
                                                    <fieldset class="rating ">
                                                        <input type="radio" id="star5" name="rating" value="5" /><label class="full" for="star5" title="Tuyệt vời - 5 sao"></label>
                                                        <input type="radio" id="star4half" name="rating" value="4 and a half" /><label class="half" for="star4half" title="Rất tốt - 4.5 sao"></label>
                                                        <input type="radio" id="star4" name="rating" value="4" /><label class="full" for="star4" title="Tốt - 4 sao"></label>
                                                        <input type="radio" id="star3half" name="rating" value="3 and a half" /><label class="half" for="star3half" title="Bình thường - 3.5 sao"></label>
                                                        <input type="radio" id="star3" name="rating" value="3" /><label class="full" for="star3" title="Ổn - 3 sao"></label>
                                                        <input type="radio" id="star2half" name="rating" value="2 and a half" /><label class="half" for="star2half" title="Có vẻ tệ - 2.5 sao"></label>
                                                        <input type="radio" id="star2" name="rating" value="2" /><label class="full" for="star2" title="Hơi tệ - 2 sao"></label>
                                                        <input type="radio" id="star1half" name="rating" value="1 and a half" /><label class="half" for="star1half" title="Tệ - 1.5 sao"></label>
                                                        <input type="radio" id="star1" name="rating" value="1" /><label class="full" for="star1" title="Quá tệ - 1 sao"></label>
                                                        <input type="radio" id="starhalf" name="rating" value="half" /><label class="half" for="starhalf" title="Cực kỳ tệ - 0.5 sao"></label>
                                                    </fieldset>
                                                    <p class="p-place">&nbsp;&nbsp;<b>{{number_format((float)\App\Feedback::where('id_place',$rlp -> pid)->avg('star'),2,'.','')}}/5</b> trong <b>{{\App\Feedback::where('id_place',$rlp -> pid)->count('star')}}</b> ĐÁNH GIÁ</p>
                                                </div>
                                                <div class="readMore float-right">
                                                    <a href="{{ route('detailplace',[$rlp ->pid]) }}" class="btn btn-primary btn-round btn-sm">
                                                        <i class="material-icons">details</i>Xem chi tiết<span class="badge badge-pill badge-primary"></span></a>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <hr>
                                        @endforeach
                                </section>
                            </div>

                            <div class="tab-pane col-12" id="viewModule">
                                <section class="list-place" id="place-1">
                                    <div class="title-dl ">
                                        <h3 class="text-primary" style="text-transform: uppercase">{{$title_place->name}}</h3>

                                    </div>
                                    <hr class="text-primary" style="border: 2px solid">
                                    <div class="row">
                                        @foreach($result_lp as $rslp)
                                        <div class="col-12 col-md-6 col-xl-6">
                                            <div class="card">
                                                <div class="card-header-image img-div">
                                                    <a href="{{ route('detailplace',[$rslp ->pid]) }}"><img src="storage/image/{{$rslp -> piname}}" alt="{{$rslp -> pname}}"
                                                                     class="img-raised rounded img-fluid a-img"></a>
                                                </div>
                                                <div class="card-body div-body">
                                                    <h5 class="card-title"><a href="{{ route('detailplace',[$rslp ->pid]) }}">{{$rslp -> pname}}<br></a></h5>
                                                    <p class="short-des">
                                                        {{$rslp -> short_des}}
                                                        <br>
                                                    </p>
                                                    <div class="star-rating">
                                                        <img src="storage/image/star-on.png" alt="1" title="bad">
                                                        <img src="storage/image/star-on.png" alt="2" title="poor">
                                                        <img src="storage/image/star-on.png" alt="3" title="regular">
                                                        <img src="storage/image/star-on.png" alt="4" title="good">
                                                        <img src="storage/image/star-half-mono.png" alt="5" title="gorgeous">
                                                    </div>
                                                    <p class="p-place">&nbsp;&nbsp;<b>{{number_format((float)\App\Feedback::where('id_place',$rslp -> pid)->avg('star'),2,'.','')}}/5</b> trong <b>{{\App\Feedback::where('id_place',$rslp -> pid)->count('star')}}</b> ĐÁNH GIÁ</p>

                                                </div>
                                                <div class="card-footer div-footer">
                                                    <a href="{{ route('detailplace',[$rslp ->pid]) }}" class="btn btn-primary btn-round btn-sm">
                                                        <i class="material-icons">details</i>Xem chi tiết<span class="badge badge-pill badge-primary"></span></a>
                                                </div>
                                            </div>
                                        </div>
                                            @endforeach
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
                    <h3>TOP DU LỊCH HẤP DẪN</h3>
                </div>
                <br>
                <div class="col-12 content-top text-center">
                    @foreach($result_top as $rstop)
                    <div class="item-top">{{--<a href="#"><img src="storage/image/{{$rstop -> piname}}" alt="{{$rstop -> pname}}" class="img-raised rounded img-fluid a-img"></a>--}}
                        <a href="{{ route('detailplace',[$rstop ->pid]) }}"><img src="storage/image/{{$rstop -> piname}}" alt="{{$rstop -> pname}}" class="img-raised rounded img-fluid"></a>
                        <div class="">
                            <p class="h4-top"><a href="{{ route('detailplace',[$rstop ->pid]) }}">{{$rstop -> pname}}</a></p>
                        </div>
                    </div>
                    <hr>
                    @endforeach
                </div>
            </div>
        </div>
    </div><!--End main-->
</div> <!-- End list place -->
@endsection

@section('footer')
    @include('customer.footer')
@endsection
