<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8"/>
    <!--<link rel="apple-touch-icon" sizes="76x76" href="./assets/img/apple-icon.png">-->
    <link rel="icon" type="image/png" href="{{asset('source/images/icon_location.jpg')}}">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <title>
        Danh sách các địa điểm
    </title>
    <meta id="Viewport" content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no'
          name='viewport'/>

    <!--     Fonts and icons     -->
    <link rel="stylesheet" type="text/css"
          href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
    <!-- CSS Files -->
    <link href="{{asset('source/assets/css/material-kit.css?v=2.0.3')}}" rel="stylesheet"/>
    <!-- CSS Just for demo purpose, don't include it in your project -->
    <link href="{{asset('source/assets/demo/demo.css')}}" rel="stylesheet"/>

    <!--CSS list place-->
    <link rel="stylesheet" href="{{asset('source/css/list_place.css')}}">
    <link rel="stylesheet" href="{{asset('source/css/style.css')}}">
</head>

<body class="sidebar-collapse">
<!-- List place  -->
<div class="list_place">
    <!--<section id="home">-->
    <div class="menuNav">
        <nav class="navbar navbar-transparent navbar-color-on-scroll fixed-top navbar-expand-lg bg-primary"
             color-on-scroll="100"
        >
            <div class="container">
                <div class="navbar-translate">
                    <a class="navbar-brand" id="logo" href="#home">
                        <i class="material-icons">home</i>
                    </a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#menu"
                            aria-expanded="false"
                            aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                        <span class="navbar-toggler-icon"></span>
                        <span class="navbar-toggler-icon"></span>
                    </button>
                </div>
                <div class="collapse navbar-collapse" id="menu">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item">
                            <a id="ahome" class="nav-link" href="#home">
                                <i class="material-icons">home</i>Trang chủ
                            </a>
                        </li>
                        <li class="nav-item">
                            <a id="aplace" class="nav-link" href="#place">
                                <i class="material-icons">beach_access</i>Du lịch
                            </a>
                        </li>
                        <li class="nav-item">
                            <a id="aeat" class="nav-link" href="#EatDrink">
                                <i class="material-icons">room_service</i>Ăn uống
                            </a>
                        </li>
                        <li class="nav-item">
                            <a id="ahotel" class="nav-link" href="#hotel">
                                <i class="material-icons">hotel</i>Khách sạn
                            </a>
                        </li>

                    </ul>
                </div>
            </div>
        </nav>
    </div>
    <!--</section>-->
    <!-- List image header -->
    <div class="header-filter clear-filter purple-filter" id="carousel" data-parallax="true">
        <div class="container" style="min-width: 100%;min-height: 100%; padding: 0;">
            <div class="col-md-12 col-sm-3 mr-auto ml-auto" style="padding-right: 0;padding-left: 0;">
                <!-- Carousel Card -->
                <div class="card card-raised card-carousel" style="width: 100%;height: 100%; margin-top: 0;margin-bottom: 0; border-radius:0; padding: 0;">
                    <div id="carouselListImage" class="carousel slide" data-ride="carousel">
                        <ol class="carousel-indicators">
                            <li data-target="#carouselListImage" data-slide-to="0" class="active"></li>
                            <li data-target="#carouselListImage" data-slide-to="1"></li>
                            <li data-target="#carouselListImage" data-slide-to="2"></li>
                        </ol>
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <img class="d-block w-100" src="{{asset('source/assets/img/bg2.jpg')}}" alt="First slide">
                                <div class="carousel-caption">
                                    <h4>

                                    </h4>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <img class="d-block w-100" src="{{asset('source/assets/img/bg3.jpg')}}" alt="Second slide">
                                <div class="carousel-caption d-none d-md-block">
                                    <h4>
                                    </h4>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <img class="d-block w-100" src="{{asset('source/assets/img/bg.jpg')}}" alt="Third slide">
                                <div class="carousel-caption d-none d-md-block">
                                    <h4>

                                    </h4>
                                </div>
                            </div>

                        </div>
                        <a class="carousel-control-prev" href="#carouselListImage" role="button" data-slide="prev">
                            <i class="material-icons">keyboard_arrow_left</i>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="carousel-control-next" href="#carouselListImage" role="button" data-slide="next">
                            <i class="material-icons">keyboard_arrow_right</i>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
                </div>
                <!-- End Carousel Card -->
            </div>
        </div>
    </div>    <!-- End list image header -->

    <!--Main container-->
    <div class="main main-raised">
        <div class="row" style=" padding-top:20px; margin-left: 0; margin-right: 15px;">
            <div class="col-md-8 col-lg-8 col-xl-8 col-sm-12 col-list-place">
                <div class="card card-nav-tabs">
                    <div class="card-header card-header-primary title-top-main">
                        <!-- colors: "header-primary", "header-info", "header-success", "header-warning", "header-danger" -->
                        <div class="nav-tabs-navigation">
                            <div class="nav-tabs-wrapper title-view-main">
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
                                                <a href="#"><img src="{{asset('source/images/cho-noi.jpg')}}" alt="Rounded Image"
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
                                                    <img src="{{asset('source/images/star-on.png')}}" alt="1" title="bad">
                                                    <img src="{{asset('source/images/star-on.png')}}" alt="2" title="poor">
                                                    <img src="{{asset('source/images/star-on.png')}}" alt="3" title="regular">
                                                    <img src="{{asset('source/images/star-on.png')}}" alt="4" title="good">
                                                    <img src="{{asset('source/images/star-half-mono.png')}}" alt="5" title="gorgeous">
                                                </div>
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
                                                <a href="#"><img src="{{asset('source/images/cho-noi.jpg')}}" alt="Rounded Image"
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
                                                    <img src="{{asset('source/images/star-on.png')}}" alt="1" title="bad">
                                                    <img src="{{asset('source/images/star-on.png')}}" alt="2" title="poor">
                                                    <img src="{{asset('source/images/star-on.png')}}" alt="3" title="regular">
                                                    <img src="{{asset('source/images/star-on.png')}}" alt="4" title="good">
                                                    <img src="{{asset('source/images/star-half-mono.png')}}" alt="5" title="gorgeous">
                                                </div>
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
                                                <a href="#"><img src="{{asset('source/images/cho-noi.jpg')}}" alt="Rounded Image"
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
                                                    <img src="{{asset('source/images/star-on.png')}}" alt="1" title="bad">
                                                    <img src="{{asset('source/images/star-on.png')}}" alt="2" title="poor">
                                                    <img src="{{asset('source/images/star-on.png')}}" alt="3" title="regular">
                                                    <img src="{{asset('source/images/star-on.png')}}" alt="4" title="good">
                                                    <img src="{{asset('source/images/star-half-mono.png')}}" alt="5" title="gorgeous">
                                                </div>
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
                                                    <a href="#"><img src="{{asset('source/images/cho-noi.jpg')}}" alt="Rounded Image"
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
                                                        <img src="{{asset('source/images/star-on.png')}}" alt="1" title="bad">
                                                        <img src="{{asset('source/images/star-on.png')}}" alt="2" title="poor">
                                                        <img src="{{asset('source/images/star-on.png')}}" alt="3" title="regular">
                                                        <img src="{{asset('source/images/star-on.png')}}" alt="4" title="good">
                                                        <img src="{{asset('source/images/star-half-mono.png')}}" alt="5" title="gorgeous">
                                                    </div>
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
                                                    <a href="#"><img src="{{asset('source/images/cho-noi.jpg')}}" alt="Rounded Image"
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
                                                        <img src="{{asset('source/images/star-on.png')}}" alt="1" title="bad">
                                                        <img src="{{asset('source/images/star-on.png')}}" alt="2" title="poor">
                                                        <img src="{{asset('source/images/star-on.png')}}" alt="3" title="regular">
                                                        <img src="{{asset('source/images/star-on.png')}}" alt="4" title="good">
                                                        <img src="{{asset('source/images/star-half-mono.png')}}" alt="5" title="gorgeous">
                                                    </div>
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
                                                    <a href="#"><img src="{{asset('source/images/cho-noi.jpg')}}" alt="Rounded Image"
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
                                                        <img src="{{asset('source/images/star-on.png')}}" alt="1" title="bad">
                                                        <img src="{{asset('source/images/star-on.png')}}" alt="2" title="poor">
                                                        <img src="{{asset('source/images/star-on.png')}}" alt="3" title="regular">
                                                        <img src="{{asset('source/images/star-on.png')}}" alt="4" title="good">
                                                        <img src="{{asset('source/images/star-half-mono.png')}}" alt="5" title="gorgeous">
                                                    </div>
                                                </div>
                                                <div class="card-footer ">
                                                    <button class="btn btn-primary btn-round btn-sm">
                                                        <i class="material-icons">details</i>Xem chi tiết<span class="badge badge-pill badge-primary"></span></button>
                                                </div>
                                            </div>
                                        </div>
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
                    <div class="item-top">
                        <a href="#"><img src="{{asset('source/images/cho-noi.jpg')}}" alt="Chợ nổi Cái Răng" class="img-raised rounded img-fluid"></a>
                        <div class="">
                            <p class="h4-top"><a href="#">Chợ nổi Cái Răng</a></p>
                        </div>
                    </div>
                    <hr>
                    <div class="item-top">
                        <a href="#"><img src="{{asset('source/images/cho-noi.jpg')}}" alt="Chợ nổi Cái Răng" class="img-raised rounded img-fluid"></a>
                        <div class="">
                            <p class="h4-top"><a href="#">Chợ nổi Cái Răng</a></p>
                        </div>
                    </div>
                    <hr>
                    <div class="item-top">
                        <a href="#"><img src="{{asset('source/images/cho-noi.jpg')}}" alt="Chợ nổi Cái Răng" class="img-raised rounded img-fluid"></a>
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

<footer class="footer" data-background-color="black">
    <div class="container">
        <nav class="float-left">
            <ul>
                <li>
                    <a href="#">
                        Địa chỉ
                    </a>
                </li>
                <li>
                    <a href="#">
                        Liên hệ
                    </a>
                </li>
                <li>
                    <a href="#">
                        Trợ giúp
                    </a>
                </li>
            </ul>
        </nav>
        <div class="copyright float-right">
            &copy;
            <script>
                document.write(new Date().getFullYear())
            </script>
            , made with <i class="material-icons">favorite</i> by
            <a href="#" target="_blank">My Team</a> for a better web.
        </div>
    </div>
</footer>
<!--   Core JS Files   -->
<script src="{{asset('source/assets/js/core/jquery.min.js')}}" type="text/javascript"></script>
<script src="{{asset('source/assets/js/core/popper.min.js')}}" type="text/javascript"></script>
<script src="{{asset('source/assets/js/core/bootstrap-material-design.min.js')}}" type="text/javascript"></script>
<script src="{{asset('source/assets/js/plugins/moment.min.js')}}"></script>
<!--	Plugin for the Datepicker, full documentation here: https://github.com/Eonasdan/bootstrap-datetimepicker -->
<script src="{{asset('source/assets/js/plugins/bootstrap-datetimepicker.js')}}" type="text/javascript"></script>
<!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
<script src="{{asset('source/assets/js/plugins/nouislider.min.js')}}" type="text/javascript"></script>
<!-- Control Center for Now Ui Kit: parallax effects, scripts for the example pages etc -->
<script src="{{asset('source/assets/js/material-kit.js?v=2.0.3')}}" type="text/javascript"></script>
<script src="{{asset('source/js/list_place.js')}}" type="text/javascript"></script>

<script>
    $(document).ready(function () {
        //init DateTimePickers
        materialKit.initFormExtendedDatetimepickers();

        // Sliders Init
        materialKit.initSliders();
    });
</script>
</body>
</html>
