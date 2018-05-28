@extends('customer.master')

@section('header')
    @include('customer.header')
@endsection

@section('content')
<div class="list_place">
    <div class="page-header header-filter clear-filter purple-filter" data-parallax="true" style="background-image: url('./source/customer/images/backgroup_listplace.jpg');">
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
        <!--<div class="section section-basic">-->
        <!--<div class="container list-place" style="padding: 30px">-->
        <div class="row" style=" padding-top:20px; margin-left: 0; margin-right: 15px;">
            <div class="col-md-8 col-lg-8 col-xl-8 col-sm-12 col-list-place">
                <div class="card card-nav-tabs">
                    <div class="card-header card-header-primary title-top-main">
                        <!-- colors: "header-primary", "header-info", "header-success", "header-warning", "header-danger" -->
                        <div class="nav-tabs-navigation">
                            <div class="nav-tabs-wrapper">
                                <ul class="nav nav-tabs" data-tabs="tabs">
                                    <li class="nav-item"><h4 class="title-view">View &nbsp;</h4></li>
                                    <li class="nav-item">
                                        <a class="nav-link title-tab-place active" href="#viewList" data-toggle="tab">
                                            <i class="material-icons">view_list</i>
                                        </a>
                                    </li>
                                    <li class="nav-item">
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
                            <div class="tab-pane active" id="viewList">
                                <section class="list-place" id="place">
                                    <div class="title-dl ">
                                        <h3 class="title text-primary">ĐỊA ĐIỂM DU LỊCH</h3>
                                    </div>
                                    <hr class="text-primary" style="border: 2px solid">
                                    <div class="item-place">
                                        <div class="row">
                                            <div class="col-6">
                                                <a href="#"><img src="source/customer/images/cho-noi.jpg" alt="Rounded Image"
                                                                 class="img-raised rounded img-fluid"></a>
                                            </div>
                                            <div class="col-6 float-left">
                                                <h3 style="margin-top: 0"><a href="#">Chợ nổi Cái Răng <br></a>
                                                </h3>
                                                <p class="">
                                                    Chợ nổi Cái Răng cách trung tâm Thành phố Cần Thơ khoảng 6
                                                    km đường bộ và mất 30 phút khi chúng ta đi bằng thuyền từ Bến Ninh Kiều.
                                                    <br>
                                                </p>
                                                <div class="star-rating">
                                                    <img src="source/customer/images/star-on.png" alt="1" title="bad">
                                                    <img src="source/customer/images/star-on.png" alt="2" title="poor">
                                                    <img src="source/customer/images/star-on.png" alt="3" title="regular">
                                                    <img src="source/customer/images/star-on.png" alt="4" title="good">
                                                    <img src="source/customer/images/star-half-mono.png" alt="5" title="gorgeous">
                                                </div>
                                                <p class="p-place">&nbsp;&nbsp;<b>4.5/5</b> trong <b>23</b> ĐÁNH GIÁ</p>
                                                <div class="readMore float-right">
                                                    <button class="btn btn-primary btn-round btn-sm">
                                                        <i class="material-icons">details</i>Xem chi tiết<span class="badge badge-pill badge-primary"></span></button>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="item-place">
                                        <div class="row">
                                            <div class="col-6">
                                                <a href="#"><img src="source/customer/images/cho-noi.jpg" alt="Rounded Image"
                                                                 class="img-raised rounded img-fluid"></a>
                                            </div>
                                            <div class="col-6">
                                                <h3 style="margin-top: 0"><a href="#">Chợ nổi Cái Răng <br></a>
                                                </h3>
                                                <p class="">
                                                    Chợ nổi Cái Răng cách trung tâm Thành phố Cần Thơ khoảng 6
                                                    km đường bộ và mất 30 phút khi chúng ta đi bằng thuyền từ Bến Ninh Kiều.
                                                    <br>
                                                </p>
                                                <div class="star-rating">
                                                    <img src="source/customer/images/star-on.png" alt="1" title="bad">
                                                    <img src="source/customer/images/star-on.png" alt="2" title="poor">
                                                    <img src="source/customer/images/star-on.png" alt="3" title="regular">
                                                    <img src="source/customer/images/star-on.png" alt="4" title="good">
                                                    <img src="source/customer/images/star-half-mono.png" alt="5" title="gorgeous">
                                                </div>
                                                <p class="p-place">&nbsp;&nbsp;<b>4.5/5</b> trong <b>23</b> ĐÁNH GIÁ</p>
                                                <div class="readMore float-right">
                                                    <button class="btn btn-primary btn-round btn-sm">
                                                        <i class="material-icons">details</i>Xem chi tiết<span class="badge badge-pill badge-primary"></span></button>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="item-place">
                                        <div class="row">
                                            <div class="col-6">
                                                <a href="#"><img src="source/customer/images/cho-noi.jpg" alt="Rounded Image"
                                                                 class="img-raised rounded img-fluid"></a>
                                            </div>
                                            <div class="col-6 float-left">
                                                <h3 style="margin-top: 0"><a href="#">Chợ nổi Cái Răng <br></a>
                                                </h3>
                                                <p >
                                                    Chợ nổi Cái Răng cách trung tâm Thành phố Cần Thơ khoảng 6
                                                    km đường bộ và mất 30 phút khi chúng ta đi bằng thuyền từ Bến Ninh Kiều.
                                                    <br>
                                                </p>
                                                <div class="star-rating">
                                                    <img src="source/customer/images/star-on.png" alt="1" title="bad">
                                                    <img src="source/customer/images/star-on.png" alt="2" title="poor">
                                                    <img src="source/customer/images/star-on.png" alt="3" title="regular">
                                                    <img src="source/customer/images/star-on.png" alt="4" title="good">
                                                    <img src="source/customer/images/star-half-mono.png" alt="5" title="gorgeous">
                                                </div>
                                                <p class="p-place">&nbsp;&nbsp;<b>4.5/5</b> trong <b>23</b> ĐÁNH GIÁ</p>
                                                <div class="readMore float-right">
                                                    <button class="btn btn-primary btn-round btn-sm">
                                                        <i class="material-icons">details</i>Xem chi tiết<span class="badge badge-pill badge-primary"></span></button>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <hr>

                                </section>
                            </div>

                            <div class="tab-pane" id="viewModule">
                                <section class="list-place" id="place-1">
                                    <div class="title-dl ">
                                        <h3 class="title text-primary">ĐỊA ĐIỂM DU LỊCH</h3>
                                    </div>
                                    <hr class="text-primary" style="border: 2px solid">
                                    <div class="row">
                                        <div class="col-6">
                                            <div class="card">
                                                <div class="card-header-image">
                                                    <a href="#"><img src="source/customer/images/cho-noi.jpg" alt="Rounded Image"
                                                                     class="img-raised rounded img-fluid"></a>
                                                </div>
                                                <div class="card-body">
                                                    <h5 class="card-title"><a href="#">Chợ nổi Cái Răng <br></a></h5>
                                                    <p class="card-text float-left">
                                                        Chợ nổi Cái Răng cách trung tâm Thành phố Cần Thơ khoảng 6
                                                        km đường bộ và mất 30 phút khi chúng ta đi bằng thuyền từ Bến
                                                        Ninh Kiều.
                                                        <br>
                                                    </p>
                                                    <div class="star-rating">
                                                        <img src="source/customer/images/star-on.png" alt="1" title="bad">
                                                        <img src="source/customer/images/star-on.png" alt="2" title="poor">
                                                        <img src="source/customer/images/star-on.png" alt="3" title="regular">
                                                        <img src="source/customer/images/star-on.png" alt="4" title="good">
                                                        <img src="source/customer/images/star-half-mono.png" alt="5" title="gorgeous">
                                                    </div>
                                                    <p class="p-place">&nbsp;&nbsp;<b>4.5/5</b> trong <b>23</b> ĐÁNH GIÁ</p>
                                                </div>
                                                <div class="card-footer ">
                                                    <button class="btn btn-primary btn-round btn-sm">
                                                        <i class="material-icons">details</i>Xem chi tiết<span class="badge badge-pill badge-primary"></span></button>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-6">
                                            <div class="card">
                                                <div class="card-header-image">
                                                    <a href="#"><img src="source/customer/images/cho-noi.jpg" alt="Rounded Image"
                                                                     class="img-raised rounded img-fluid"></a>
                                                </div>
                                                <div class="card-body">
                                                    <h5 class="card-title"><a href="#">Chợ nổi Cái Răng <br></a></h5>
                                                    <p class="card-text float-left">
                                                        Chợ nổi Cái Răng cách trung tâm Thành phố Cần Thơ khoảng 6
                                                        km đường bộ và mất 30 phút khi chúng ta đi bằng thuyền từ Bến
                                                        Ninh Kiều.
                                                        <br>
                                                    </p>
                                                    <div class="star-rating">
                                                        <img src="source/customer/images/star-on.png" alt="1" title="bad">
                                                        <img src="source/customer/images/star-on.png" alt="2" title="poor">
                                                        <img src="source/customer/images/star-on.png" alt="3" title="regular">
                                                        <img src="source/customer/images/star-on.png" alt="4" title="good">
                                                        <img src="source/customer/images/star-half-mono.png" alt="5" title="gorgeous">
                                                    </div>
                                                    <p class="p-place">&nbsp;&nbsp;<b>4.5/5</b> trong <b>23</b> ĐÁNH GIÁ</p>
                                                </div>
                                                <div class="card-footer">
                                                    <button class="btn btn-primary btn-round btn-sm">
                                                        <i class="material-icons">details</i>Xem chi tiết<span class="badge badge-pill badge-primary"></span></button>

                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-6">
                                            <div class="card">
                                                <div class="card-header-image">
                                                    <a href="#"><img src="source/customer/images/cho-noi.jpg" alt="Rounded Image"
                                                                     class="img-raised rounded img-fluid"></a>
                                                </div>
                                                <div class="card-body">
                                                    <h5 class="card-title"><a href="#">Chợ nổi Cái Răng <br></a></h5>
                                                    <p class="card-text float-left">
                                                        Chợ nổi Cái Răng cách trung tâm Thành phố Cần Thơ khoảng 6
                                                        km đường bộ và mất 30 phút khi chúng ta đi bằng thuyền từ Bến
                                                        Ninh Kiều.
                                                        <br>
                                                    </p>
                                                    <div class="star-rating">
                                                        <img src="source/customer/images/star-on.png" alt="1" title="bad">
                                                        <img src="source/customer/images/star-on.png" alt="2" title="poor">
                                                        <img src="source/customer/images/star-on.png" alt="3" title="regular">
                                                        <img src="source/customer/images/star-on.png" alt="4" title="good">
                                                        <img src="source/customer/images/star-half-mono.png" alt="5" title="gorgeous">
                                                    </div>
                                                    <p class="p-place">&nbsp;&nbsp;<b>4.5/5</b> trong <b>23</b> ĐÁNH GIÁ</p>
                                                </div>
                                                <div class="card-footer">
                                                    <button class="btn btn-primary btn-round btn-sm">
                                                        <i class="material-icons">details</i>Xem chi tiết<span class="badge badge-pill badge-primary"></span></button>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </section>
                            </div>
                            <div class="tab-pane" id="map">
                                <div class="map-responsive">
                                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3928.7926945322533!2d105.7870708008999!3d10.03395864279271!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31a062a2111cf0ed%3A0x4c8a499d81395168!2zQ8O0bmcgVmnDqm4gQsOqzIFuIE5pbmggS2nhu4F1IEPhuqduIFRoxqE!5e0!3m2!1svi!2s!4v1526614378134" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
                                </div>
                            </div>
                            <div class="tab-pane" id="comment">
                                <div class="fb-cmt">
                                    <div class="fb-comments" data-href="https://developers.facebook.com/docs/plugins/comments#configurator" data-numposts="5" style="width: 100%;"></div>
                                </div>
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
                    <div class="item-top">
                        <a href="#"><img src="source/customer/images/cho-noi.jpg" alt="Chợ nổi Cái Răng" class="img-raised rounded img-fluid"></a>
                        <div class="">
                            <p class="h4-top"><a href="#">Chợ nổi Cái Răng</a></p>
                        </div>
                    </div>
                    <hr>
                    <div class="item-top">
                        <a href="#"><img src="source/customer/images/cho-noi.jpg" alt="Chợ nổi Cái Răng" class="img-raised rounded img-fluid"></a>
                        <div class="">
                            <p class="h4-top"><a href="#">Chợ nổi Cái Răng</a></p>
                        </div>
                    </div>
                    <hr>
                    <div class="item-top">
                        <a href="#"><img src="source/customer/images/cho-noi.jpg" alt="Chợ nổi Cái Răng" class="img-raised rounded img-fluid"></a>
                        <div class="">
                            <p class="h4-top"><a href="#">Chợ nổi Cái Răng</a></p>
                        </div>
                    </div>
                    <hr>
                </div>
            </div>
        </div>
    </div><!--End main-->
</div> <!-- End list place -->
@endsection

@section('footer')
    @include('customer.footer')
@endsection
