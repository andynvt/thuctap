@extends('customer.master')

@section('header')
    @include('customer.header')
@endsection

@section('content')
<div class="page-header header-filter clear-filter purple-filter" data-parallax="true" style="background-image: url('./source/customer/images/bnk.jpg');">
    <div class="container">
        <div class="row">
            <div class="col-md-8 ml-auto mr-auto">
                <div class="brand">
                    <h1>Bến Ninh Kiều</h1>
                    <h3>Một nét văn hoá của người Cần Thơ</h3>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="main main-raised">
    <div class="wrapper-place">
        <div class="row" style="margin: 0">
            <div class="col-md-6 col-lg-6 col-xl-6 col-sm-12 div-col6-album">
                <div class="container album-place">
                    <div class="feature">
                        <figure class="featured-item image-holder r-3-2 transition"></figure>
                    </div>
                    <div class="gallery-wrapper" style="line-height: 0">
                        <div class="gallery">
                            <div class="item-wrapper">
                                <figure class="gallery-item image-holder r-3-2 active transition"></figure>
                            </div>
                            <div class="item-wrapper">
                                <figure class="gallery-item image-holder r-3-2 transition"></figure>
                            </div>
                            <div class="item-wrapper">
                                <figure class="gallery-item image-holder r-3-2 transition"></figure>
                            </div>
                            <div class="item-wrapper">
                                <figure class="gallery-item image-holder r-3-2 transition"></figure>
                            </div>
                            <div class="item-wrapper">
                                <figure class="gallery-item image-holder r-3-2"></figure>
                            </div>
                            <div class="item-wrapper">
                                <figure class="gallery-item image-holder r-3-2 transition"></figure>
                            </div>
                            <div class="item-wrapper">
                                <figure class="gallery-item image-holder r-3-2 transition"></figure>
                            </div>
                            <div class="item-wrapper">
                                <figure class="gallery-item image-holder r-3-2 transition"></figure>
                            </div>
                            <div class="item-wrapper">
                                <figure class="gallery-item image-holder r-3-2 transition"></figure>
                            </div>
                            <div class="item-wrapper">
                                <figure class="gallery-item image-holder r-3-2 transition"></figure>
                            </div>
                        </div>
                    </div>
                    <div class="controls">
                        <button class="move-btn left">&larr;</button>
                        <button class="move-btn right">&rarr;</button>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-lg-6 col-xl-6 col-sm-12 quick-info-place">
                <h2 class="h2-place">Bến Ninh Kiều</h2>
                <div class="social-place">
                    <div class="fb-like" data-href="https://developers.facebook.com/docs/plugins/" data-layout="button" data-action="like" data-size="small" data-show-faces="true" data-share="true"></div>
                    <div class="fb-save" data-uri="https://www.instagram.com/facebook/" data-size="small"></div>
                    <a href="https://plus.google.com/101474928247138416337?prsrc=3" rel="publisher" target="_top" style="text-decoration:none;">
                        <img src="//ssl.gstatic.com/images/icons/gplus-16.png" alt="Google+" style="border:0;width:16px;height:16px;" />
                    </a>
                </div>
                <div class="star-place">
                    <fieldset class="rating ">
                        <input type="radio" id="star5" name="rating" value="5" /><label class="full" for="star5" title="Awesome - 5 stars"></label>
                        <input type="radio" id="star4half" name="rating" value="4 and a half" /><label class="half" for="star4half" title="Pretty good - 4.5 stars"></label>
                        <input type="radio" id="star4" name="rating" value="4" /><label class="full" for="star4" title="Pretty good - 4 stars"></label>
                        <input type="radio" id="star3half" name="rating" value="3 and a half" /><label class="half" for="star3half" title="Meh - 3.5 stars"></label>
                        <input type="radio" id="star3" name="rating" value="3" /><label class="full" for="star3" title="Meh - 3 stars"></label>
                        <input type="radio" id="star2half" name="rating" value="2 and a half" /><label class="half" for="star2half" title="Kinda bad - 2.5 stars"></label>
                        <input type="radio" id="star2" name="rating" value="2" /><label class="full" for="star2" title="Kinda bad - 2 stars"></label>
                        <input type="radio" id="star1half" name="rating" value="1 and a half" /><label class="half" for="star1half" title="Meh - 1.5 stars"></label>
                        <input type="radio" id="star1" name="rating" value="1" /><label class="full" for="star1" title="Sucks big time - 1 star"></label>
                        <input type="radio" id="starhalf" name="rating" value="half" /><label class="half" for="starhalf" title="Sucks big time - 0.5 stars"></label>
                    </fieldset>
                    <p class="p-place">&nbsp;&nbsp;<b>4.65/5</b> trong <b>23</b> đánh giá</p>
                </div>
                <div class="clearfix"></div>
                <div class="info-place">
                    <p class="p-place">
                        Toàn cảnh bến Ninh Kiều Bến Ninh Kiều nay được gọi là Công viên Ninh Kiều là một bến nước và là địa danh du lịch, văn hóa của thành phố Cần Thơ hình thành từ thế kỷ XIX. Bến Ninh Kiều tọa lạc ở bờ phải sông Hậu, nằm giữa ngã ba sông Hậu và sông Cần Thơ tiếp giáp với đường Hai Bà Trưng, phường Tân An, quận Ninh Kiều thuộc thành phố Cần Thơ.
                    </p>
                </div>
            </div>
        </div>
        <div class="row" style="margin-left: 0; margin-right: 15px;">
            <div class="col-md-8 col-lg-8 col-xl-8 col-sm-12 col-info-place">
                <div class="card card-nav-tabs">
                    <div class="card-header card-header-primary title-lq-main">
                        <!-- colors: "header-primary", "header-info", "header-success", "header-warning", "header-danger" -->
                        <div class="nav-tabs-navigation">
                            <div class="nav-tabs-wrapper">
                                <ul class="nav nav-tabs" data-tabs="tabs">
                                    <li class="nav-item">
                                        <a class="nav-link title-tab-place active" href="#info" data-toggle="tab">THÔNG TIN</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link title-tab-place " href="#map" data-toggle="tab">BẢN ĐỒ</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link title-tab-place" href="#comment" data-toggle="tab">BÌNH LUẬN</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="card-body" style="padding: 15px;">
                        <div class="tab-content text-center">
                            <div class="tab-pane active" id="info">
                                <h4 class="h4-in-info">Tổng quan</h4>
                                <p>
                                    Bến Ninh Kiều ngày nay nằm giữa ngã ba sông Hậu và sông Cần Thơ, dọc theo con đường Hai Bà Trưng, trực thuộc phường Tân An, quận Ninh Kiều, thành phố Cần Thơ. Nói về giai thoại hình thành nên Bến, bến Ninh Kiều xưa vốn là một bến sông ở đầu chợ Cần Thơ. Năm 1876, quân Pháp chiếm đóng Cần Thơ, bến sông được xây gạch, đá dọc theo bờ để ngăn sóng và trở thành bến tàu giao thương hàng hóa đông đúc, tấp nập. Bến sông được người Pháp đặt tên là Quai de Commerce (có nghĩa là bến Thương Mại), còn người dân thì gọi với cái tên bình dị là bến Hàng Dương vì dọc bờ sông có trồng nhiều cây dương. Năm 1957, Tỉnh trưởng Cần Thơ lúc này là Đỗ Văn Chước đã tạo tại đây nên một bến dạo mát và công viên cây cảnh. Sau đó, Đỗ Văn Chước trình lên Ngô Đình Diệm (tổng thống của Việt Nam cộng hòa) xin đặt tên công viên và bến dạo mát là Ninh Kiều theo tên địa danh lịch sử Ninh Kiều - nơi ghi dấu chiến thắng quân Minh của anh hùng Lê Lợi và nghĩa quân Lam Sơn. Việc chọn tên Ninh Kiều để đặt cho một bến và công viên mới thành lập dọc theo đường Lê Lợi thật sự có ý nghĩa cũng như thể hiện sự trân trọng với chiến tích to lớn của người anh hùng đất Lam Sơn.
                                </p>
                                <h4 class="h4-in-info">Ngày nay</h4>
                                <p>
                                    Ngày nay, bến Ninh Kiều được đầu tư thành công viên du lịch có diện tích 7.000 m², trở thành điểm thu hút người dân địa phương và nhiều lượt du khách đến ngắm cảnh, tản bộ, hóng mát. Đứng ở bến Ninh Kiều, du khách có thể nhìn thấy cầu Cần Thơ – cây cầu dây văng có nhịp chính dài nhất Đông Nam Á vào thời điểm hoàn thành (4/2010). Trong công viên có bức tượng Chủ tịch Hồ Chí Minh bằng đồng cao 7,2 m, đặt trên bệ cao 3,6 m, trọng lượng hơn 12 tấn.
                                    <br> Bến Ninh Kiều là một công viên với nhiều cây cảnh có thể vui chơi và dạo mát theo con đường dọc bờ sông kè được thảm đá bằng phẳng, những lối đi tráng nhựa, xi măng xen kẻ những sân cỏ nhìn rất đẹp. Trong khuôn viên được bố trí nhiều băng đá để khách ngồi nghỉ chân ngắm cảnh dọc bờ sông. Dọc bờ sông là hàng dương rũ thân xuống mặt sông rất đẹp, lá sà xuống hòa cùng dãy sóng nhấp nhô, đôi lúc đong đưa theo từng con gió thổi vào từ dòng sông Hậu...Du khách có thể đến thăm Bến Ninh Kiều bất cứ thời gian nào, bởi mỗi lúc là một khoảnh khắc độc đáo riêng. Buổi sáng bến Ninh Kiều mang vẻ yên tĩnh, trầm mặc lạ thường giữa cái đông đúc, náo nhiệt của thành phố. Về đêm, Bến Ninh Kiều thật sự khoác lên mình chiếc áo mới, vô cùng lộng lẫy và nguy nga với những ánh đèn rực rỡ sắc màu, người người qua lại, ta dễ dàng bắt gặp cảnh một gia đình cùng dắt tay nhau đi dạo quanh Bến, nhiều nhóm trẻ em vô tư vui đùa trước tượng Chủ tịch Hồ Chí Minh hay vô tình ta bắt gặp hình ảnh cô gái đôi mươi thẹn thùng bên người yêu đi dạo phố...tất cả tạo nên một bức tranh sinh động, đầy màu sắc.
                                </p>
                                <h4 class="h4-in-info">Du lịch</h4>

                                <p>
                                    Đến Bến Ninh Kiều, du khách không thể bỏ qua cơ hội được một lần lên du thuyền Ninh Kiều. Mỗi ngày du thuyền Ninh Kiều - một nhà hàng trên sông, hoạt động từ 19h30 tối tại đến 21h tối, đưa khách thưởng ngoạn trên sông và xem những tiết mục văn nghệ như cải lương hay đờn ca tài tử đặc sắc, thưởng thức các món ăn đặc sản Nam Bộ. Du thuyền với thiết kế 3 tầng rộng rãi, sang trọng với sức chứa khoảng 600 khách mỗi thuyền. Hiện nay tại Du thuyền Bến Ninh Kiều có 2 du thuyền phục vụ khách, bạn không phải chịu phí khi lên thuyền mà chỉ thanh toán cho thức ăn và thức uống dùng khi vui chơi trên thuyền. Giá cả các món ăn, uống trên đây khá hợp lý, dao động từ 80.000 đến 300.000. Giữa đất trời bao la, xung quanh là sông nước hữu tình, mênh mông và vẳng bên tai là giọng ca vọng cổ vang lên mượt mà...quả là những phút giây thư giãn tuyệt vời, thi vị. Từ trên du thuyền bạn cũng có thể ngắm nhìn vẻ đẹp lung linh, tráng lệ của cầu Cần Thơ - cây cầu lớn và dài nhất Việt Nam.<br> Đến với bến Ninh Kiều, du khách không chỉ được tham quan công viên Ninh Kiều mà còn có thể ghé thăm chợ cổ Cần Thơ nằm ngày đầu Bến. Tại đây bày bán các mặt hàng lưu niệm, vật dùng gắn liền với miền sông nước nam Bộ, du khách có thể tha hồ lựa chọn những món quà lưu niệm để mang về tặng người thân, bạn bè. Và đi đến cuối bến, du khách sẽ bắt gặp một cây cầu đi bộ nói liền Bến Ninh Kiều với cồn Cái Khế, Cầu chỉ mới khánh thành vào tháng 2 năm 2016 nhưng đã nhanh chóng trở thành điểm nhấn thú vị trong hành trình tham quan bến Ninh Kiều, Cầu đi bộ thật sự thu hút với muôn màu ánh đèn vào ban đêm, được hòa mình vào khí trời về đêm khi đứng trên cầu mang đến cảm giác thật dễ chịu.
                                </p>

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
            <div class="col-md-4 col-lg-4 col-xl-4 col-sm-12 card col-card-lq">
                <div class="title-lq card-header card-header-primary">
                    <h3>ĐỊA ĐIỂM LIÊN QUAN</h3>
                </div>
                <br>
                <div class="col-12 content-lq">
                    <div class="item-lq">
                        <a href="#"><img src="source/customer/images/1big.jpg" alt="Chợ nổi Cái Răng" class="img-raised rounded img-fluid"></a>
                        <div class="">
                            <p class="h4-lq"><a href="#">Chợ nổi Cái Răng</a></p>
                        </div>
                    </div>
                    <hr>
                    <div class="item-lq">
                        <a href="#"><img src="source/customer/images/1big.jpg" alt="Chợ nổi Cái Răng" class="img-raised rounded img-fluid"></a>
                        <div class="">
                            <p class="h4-lq"><a href="#">Chợ nổi Cái Răng</a></p>
                        </div>
                    </div>
                    <hr>
                    <div class="item-lq">
                        <a href="#"><img src="source/customer/images/1big.jpg" alt="Chợ nổi Cái Răng" class="img-raised rounded img-fluid"></a>
                        <div class="">
                            <p class="h4-lq"><a href="#">Chợ nổi Cái Răng</a></p>
                        </div>
                    </div>
                    <hr>
                    <div class="item-lq">
                        <a href="#"><img src="source/customer/images/1big.jpg" alt="Chợ nổi Cái Răng" class="img-raised rounded img-fluid"></a>
                        <div class="">
                            <p class="h4-lq"><a href="#">Chợ nổi Cái Răng</a></p>
                        </div>
                    </div>
                    <hr>
                    <div class="item-lq">
                        <a href="#"><img src="source/customer/images/1big.jpg" alt="Chợ nổi Cái Răng" class="img-raised rounded img-fluid"></a>
                        <div class="">
                            <p class="h4-lq"><a href="#">Chợ nổi Cái Răng</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row" style="margin: 0;">
            <div class="col-12">
                <div class="card card-nav-tabs">
                    <div class="title-lq card-header card-header-primary">
                        <h3>ĂN UỐNG</h3>
                    </div>
                    <div class="card-body " style="padding: 20px 5px 0 5px;">
                        <div class="tab-content text-left">
                            <div class="tab-pane active" id="info">
                                <div class="text-center my-3 content-slide-place">
                                    <div id="eatingCarousel" class="carousel slide w-100" data-ride="carousel">
                                        <div class="carousel-inner w-100" role="listbox">
                                            <div class="carousel-item row no-gutters active">
                                                <div class="col-4 float-left">
                                                    <div class="item-lq">
                                                        <a href="#"><img src="source/customer/images/2big.jpg" alt="Chợ nổi Cái Răng" class="img-raised rounded img-fluid"></a>
                                                        <h4 class="h4-ct"><a href="#">Chợ nổi Cái Răng</a></h4>
                                                    </div>
                                                </div>
                                                <div class="col-4 float-left">
                                                    <div class="item-lq">
                                                        <a href="#"><img src="source/customer/images/2small.jpg" alt="Chợ nổi Cái Răng" class="img-raised rounded img-fluid"></a>
                                                        <h4 class="h4-ct"><a href="#">Chợ nổi Cái Răng</a></h4>
                                                    </div>
                                                </div>
                                                <div class="col-4 float-left">
                                                    <div class="item-lq">
                                                        <a href="#"><img src="source/customer/images/cho-noi.jpg" alt="Chợ nổi Cái Răng" class="img-raised rounded img-fluid"></a>
                                                        <h4 class="h4-ct"><a href="#">Chợ nổi Cái Răng</a></h4>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="carousel-item row no-gutters ">
                                                <div class="col-4 float-left">
                                                    <div class="item-lq">
                                                        <a href="#"><img src="source/customer/images/cho-noi.jpg" alt="Chợ nổi Cái Răng" class="img-raised rounded img-fluid"></a>
                                                        <h4 class="h4-ct"><a href="#">Chợ nổi Cái Răng</a></h4>
                                                    </div>
                                                </div>
                                                <div class="col-4 float-left">
                                                    <div class="item-lq">
                                                        <a href="#"><img src="source/customer/images/cho-noi.jpg" alt="Chợ nổi Cái Răng" class="img-raised rounded img-fluid"></a>
                                                        <h4 class="h4-ct"><a href="#">Chợ nổi Cái Răng</a></h4>
                                                    </div>
                                                </div>
                                                <div class="col-4 float-left">
                                                    <div class="item-lq">
                                                        <a href="#"><img src="source/customer/images/cho-noi.jpg" alt="Chợ nổi Cái Răng" class="img-raised rounded img-fluid"></a>
                                                        <h4 class="h4-ct"><a href="#">Chợ nổi Cái Răng</a></h4>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <a class="carousel-control-prev" href="#eatingCarousel" role="button" data-slide="prev">
                                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                        <span class="sr-only">Previous</span>
                                        </a>
                                        <a class="carousel-control-next" href="#eatingCarousel" role="button" data-slide="next"><span class="carousel-control-next-icon" aria-hidden="true"></span>
                                        <span class="sr-only">Next</span>
                                        </a>
                                    </div>
                                </div>

                                <!--mobile carousel-->

                                <div class="text-center my-3">
                                    <div id="eatingMobileCarousel" class="carousel slide w-100" data-ride="carousel">
                                        <div class="carousel-inner w-100" role="listbox">
                                            <div class="carousel-item row no-gutters active">
                                                <div class="col-12 float-left">
                                                    <div class="item-lq">
                                                        <a href="#"><img src="source/customer/images/2big.jpg" alt="Chợ nổi Cái Răng" class="img-raised rounded img-fluid"></a>
                                                        <h4 class="h4-ct"><a href="#">Chợ nổi Cái Răng</a></h4>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="carousel-item row no-gutters ">
                                                <div class="col-12 float-left">
                                                    <div class="item-lq">
                                                        <a href="#"><img src="source/customer/images/cho-noi.jpg" alt="Chợ nổi Cái Răng" class="img-raised rounded img-fluid"></a>
                                                        <h4 class="h4-ct"><a href="#">Chợ nổi Cái Răng</a></h4>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="carousel-item row no-gutters ">
                                                <div class="col-12 float-left">
                                                    <div class="item-lq">
                                                        <a href="#"><img src="source/customer/images/cho-noi.jpg" alt="Chợ nổi Cái Răng" class="img-raised rounded img-fluid"></a>
                                                        <h4 class="h4-ct"><a href="#">Chợ nổi Cái Răng</a></h4>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <a class="carousel-control-prev" href="#eatingMobileCarousel" role="button" data-slide="prev">
                                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                        <span class="sr-only">Previous</span>
                                        </a>
                                        <a class="carousel-control-next" href="#eatingMobileCarousel" role="button" data-slide="next"><span class="carousel-control-next-icon" aria-hidden="true"></span>
                                        <span class="sr-only">Next</span>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row" style="margin: 0;">
            <div class="col-12">
                <div class="card card-nav-tabs">
                    <div class="title-lq card-header card-header-primary">
                        <h3>KHÁCH SẠN</h3>
                    </div>
                    <div class="card-body " style="padding: 20px 5px 0 5px;">
                        <div class="tab-content text-left">
                            <div class="tab-pane active" id="info">
                                <div class="text-center my-3 content-slide-place">
                                    <div id="hotelCarousel" class="carousel slide w-100" data-ride="carousel">
                                        <div class="carousel-inner w-100" role="listbox">
                                            <div class="carousel-item row no-gutters active">
                                                <div class="col-4 float-left">
                                                    <div class="item-lq">
                                                        <a href="#"><img src="source/customer/images/2big.jpg" alt="Chợ nổi Cái Răng" class="img-raised rounded img-fluid"></a>
                                                        <h4 class="h4-ct"><a href="#">Chợ nổi Cái Răng</a></h4>
                                                    </div>
                                                </div>
                                                <div class="col-4 float-left">
                                                    <div class="item-lq">
                                                        <a href="#"><img src="source/customer/images/2small.jpg" alt="Chợ nổi Cái Răng" class="img-raised rounded img-fluid"></a>
                                                        <h4 class="h4-ct"><a href="#">Chợ nổi Cái Răng</a></h4>
                                                    </div>
                                                </div>
                                                <div class="col-4 float-left">
                                                    <div class="item-lq">
                                                        <a href="#"><img src="source/customer/images/cho-noi.jpg" alt="Chợ nổi Cái Răng" class="img-raised rounded img-fluid"></a>
                                                        <h4 class="h4-ct"><a href="#">Chợ nổi Cái Răng</a></h4>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="carousel-item row no-gutters ">
                                                <div class="col-4 float-left">
                                                    <div class="item-lq">
                                                        <a href="#"><img src="source/customer/images/cho-noi.jpg" alt="Chợ nổi Cái Răng" class="img-raised rounded img-fluid"></a>
                                                        <h4 class="h4-ct"><a href="#">Chợ nổi Cái Răng</a></h4>
                                                    </div>
                                                </div>
                                                <div class="col-4 float-left">
                                                    <div class="item-lq">
                                                        <a href="#"><img src="source/customer/images/cho-noi.jpg" alt="Chợ nổi Cái Răng" class="img-raised rounded img-fluid"></a>
                                                        <h4 class="h4-ct"><a href="#">Chợ nổi Cái Răng</a></h4>
                                                    </div>
                                                </div>
                                                <div class="col-4 float-left">
                                                    <div class="item-lq">
                                                        <a href="#"><img src="source/customer/images/cho-noi.jpg" alt="Chợ nổi Cái Răng" class="img-raised rounded img-fluid"></a>
                                                        <h4 class="h4-ct"><a href="#">Chợ nổi Cái Răng</a></h4>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <a class="carousel-control-prev" href="#hotelCarousel" role="button" data-slide="prev">
                                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                        <span class="sr-only">Previous</span>
                                        </a>
                                        <a class="carousel-control-next" href="#hotelCarousel" role="button" data-slide="next"><span class="carousel-control-next-icon" aria-hidden="true"></span>
                                        <span class="sr-only">Next</span>
                                        </a>
                                    </div>
                                </div>

                                <!--mobile carousel-->

                                <div class="text-center my-3">
                                    <div id="hotelMobileCarousel" class="carousel slide w-100" data-ride="carousel">
                                        <div class="carousel-inner w-100" role="listbox">
                                            <div class="carousel-item row no-gutters active">
                                                <div class="col-12 float-left">
                                                    <div class="item-lq">
                                                        <a href="#"><img src="source/customer/images/2big.jpg" alt="Chợ nổi Cái Răng" class="img-raised rounded img-fluid"></a>
                                                        <h4 class="h4-ct"><a href="#">Chợ nổi Cái Răng</a></h4>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="carousel-item row no-gutters ">
                                                <div class="col-12 float-left">
                                                    <div class="item-lq">
                                                        <a href="#"><img src="source/customer/images/cho-noi.jpg" alt="Chợ nổi Cái Răng" class="img-raised rounded img-fluid"></a>
                                                        <h4 class="h4-ct"><a href="#">Chợ nổi Cái Răng</a></h4>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="carousel-item row no-gutters ">
                                                <div class="col-12 float-left">
                                                    <div class="item-lq">
                                                        <a href="#"><img src="source/customer/images/cho-noi.jpg" alt="Chợ nổi Cái Răng" class="img-raised rounded img-fluid"></a>
                                                        <h4 class="h4-ct"><a href="#">Chợ nổi Cái Răng</a></h4>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <a class="carousel-control-prev" href="#hotelMobileCarousel" role="button" data-slide="prev">
                                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                        <span class="sr-only">Previous</span>
                                        </a>
                                        <a class="carousel-control-next" href="#hotelMobileCarousel" role="button" data-slide="next"><span class="carousel-control-next-icon" aria-hidden="true"></span>
                                        <span class="sr-only">Next</span>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

{{-- Đem đống script này qua bên detail.js giùm tao --}}
	<script>
        $(document).ready(function() {
            //init DateTimePickers
            materialKit.initFormExtendedDatetimepickers();

            // Sliders Init
            materialKit.initSliders();
        });

        function scrollToDownload() {
            if ($('.section-download').length != 0) {
                $("html, body").animate({
                    scrollTop: $('.section-download').offset().top
                }, 1000);
            }
        }
    </script>
    <script>
        (function(d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id)) return;
            js = d.createElement(s);
            js.id = id;
            js.src = 'https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v3.0';
            fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));
    </script>
    <script src="https://apis.google.com/js/platform.js" async defer>
        {
            lang: 'vi'
        }
    </script>
    <script>
        (function(d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id)) return;
            js = d.createElement(s);
            js.id = id;
            js.src = 'https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v3.0';
            fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));
    </script>
    <script>
        // $('#myCarousel').carousel({
        //     interval: 10000
        // })

        $('.carousel .item').each(function() {
            var next = $(this).next();
            if (!next.length) {
                next = $(this).siblings(':first');
            }
            next.children(':first-child').clone().appendTo($(this));

            if (next.next().length > 0) {
                next.next().children(':first-child').clone().appendTo($(this));
            } else {
                $(this).siblings(':first').children(':first-child').clone().appendTo($(this));
            }
        });
    </script>

    {{-- slide image --}}
    <script>
    	var gallery = document.querySelector('.gallery');
		var galleryItems = document.querySelectorAll('.gallery-item');
		var numOfItems = gallery.children.length;
		var itemWidth = 23; // percent: as set in css

		var featured = document.querySelector('.featured-item');

		var leftBtn = document.querySelector('.move-btn.left');
		var rightBtn = document.querySelector('.move-btn.right');
		var leftInterval;
		var rightInterval;

		var scrollRate = 0.2;
		var left;

		function selectItem(e) {
		    if (e.target.classList.contains('active')) return;

		    featured.style.backgroundImage = e.target.style.backgroundImage;

		    for (var i = 0; i < galleryItems.length; i++) {
		        if (galleryItems[i].classList.contains('active'))
		            galleryItems[i].classList.remove('active');
		    }

		    e.target.classList.add('active');
		}

		function galleryWrapLeft() {
		    var first = gallery.children[0];
		    gallery.removeChild(first);
		    gallery.style.left = -itemWidth + '%';
		    gallery.appendChild(first);
		    gallery.style.left = '0%';
		}

		function galleryWrapRight() {
		    var last = gallery.children[gallery.children.length - 1];
		    gallery.removeChild(last);
		    gallery.insertBefore(last, gallery.children[0]);
		    gallery.style.left = '-23%';
		}

		function moveRight() {
		    left = left || 0;

		    leftInterval = setInterval(function () {
		        gallery.style.left = left + '%';

		        if (left > -itemWidth) {
		            left -= scrollRate;
		        } else {
		            left = 0;
		            galleryWrapLeft();
		        }
		    }, 1);
		}

		function moveLeft() {
		    //Make sure there is element to the leftd
		    if (left > -itemWidth && left < 0) {
		        left = left - itemWidth;

		        var last = gallery.children[gallery.children.length - 1];
		        gallery.removeChild(last);
		        gallery.style.left = left + '%';
		        gallery.insertBefore(last, gallery.children[0]);
		    }

		    left = left || 0;

		    leftInterval = setInterval(function () {
		        gallery.style.left = left + '%';

		        if (left < 0) {
		            left += scrollRate;
		        } else {
		            left = -itemWidth;
		            galleryWrapRight();
		        }
		    }, 1);
		}

		function stopMovement() {
		    clearInterval(leftInterval);
		    clearInterval(rightInterval);
		}

		leftBtn.addEventListener('mouseenter', moveLeft);
		leftBtn.addEventListener('mouseleave', stopMovement);
		rightBtn.addEventListener('mouseenter', moveRight);
		rightBtn.addEventListener('mouseleave', stopMovement);


        // Trừ thằng này để đổ dữ liệu
		//Start this baby up
		(function init() {
		    var images = [
				'https://s3-us-west-2.amazonaws.com/forconcepting/800Wide50Quality/car.jpg',
				'https://s3-us-west-2.amazonaws.com/forconcepting/800Wide50Quality/city.jpg',
				'https://s3-us-west-2.amazonaws.com/forconcepting/800Wide50Quality/deer.jpg',
				'https://s3-us-west-2.amazonaws.com/forconcepting/800Wide50Quality/flowers.jpg',
				'https://s3-us-west-2.amazonaws.com/forconcepting/800Wide50Quality/food.jpg',
				'https://s3-us-west-2.amazonaws.com/forconcepting/800Wide50Quality/guy.jpg',
				'https://s3-us-west-2.amazonaws.com/forconcepting/800Wide50Quality/landscape.jpg',
				'https://s3-us-west-2.amazonaws.com/forconcepting/800Wide50Quality/lips.jpg',
				'https://s3-us-west-2.amazonaws.com/forconcepting/800Wide50Quality/night.jpg',
				'https://s3-us-west-2.amazonaws.com/forconcepting/800Wide50Quality/table.jpg'
			];

		    //Set Initial Featured Image
		    featured.style.backgroundImage = 'url(' + images[0] + ')';

		    //Set Images for Gallery and Add Event Listeners
		    for (var i = 0; i < galleryItems.length; i++) {
		        galleryItems[i].style.backgroundImage = 'url(' + images[i] + ')';
		        galleryItems[i].addEventListener('click', selectItem);
		    }
		})();
        // END Trừ thằng này để đổ dữ liệu

		//slide
    </script>
    {{-- end slide image --}}
{{-- END Đem đống script này qua bên detail.js giùm tao --}}

@endsection

@section('footer')
    @include('customer.footer')
@endsection