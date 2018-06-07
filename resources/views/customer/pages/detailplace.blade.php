@extends('customer.master')

@section('header')
    @include('customer.header')
@endsection
<title>
    {{$places[0]->name}} | Tour Guide
</title>
@section('content')
<div class="page-header header-filter clear-filter purple-filter" data-parallax="true" style="background-image: url('./storage/image/{{$image[0]->name}}');">
    <div class="container">
        <div class="row">
            <div class="col-md-8 ml-auto mr-auto">
                <div class="brand" style="text-align: center;">
                    <h1>{{$places[0]->name}}</h1>
                    <h3>{{$places[0]->slogan}}</h3>
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
                            @foreach($image as $i)
                            <div class="item-wrapper">
                                <figure class="gallery-item image-holder r-3-2 transition"></figure>
                            </div>
                            @endforeach
                        </div>
                        <script>
                            $('.gallery-item:first').addClass('active');
                        </script>
                    </div>
                    <div class="controls">
                        <button class="move-btn left">&larr;</button>
                        <button class="move-btn right">&rarr;</button>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-lg-6 col-xl-6 col-sm-12 quick-info-place">
                <h2 class="h2-place">{{$places[0]->name}}</h2>
                <div class="social-place">
                    <div class="fb-like" data-href="https://developers.facebook.com/docs/plugins/" data-layout="button" data-action="like" data-size="small" data-show-faces="true" data-share="true"></div>
                    <div class="fb-save" data-uri="https://www.instagram.com/facebook/" data-size="small"></div>
                    <a href="https://plus.google.com/101474928247138416337?prsrc=3" rel="publisher" target="_top" style="text-decoration:none;">
                        <img src="//ssl.gstatic.com/images/icons/gplus-16.png" alt="Google+" style="border:0;width:16px;height:16px;" />
                    </a>
                </div>
                {{--<form method="post" action="{{route('dg')}}">--}}
                    <input type="hidden" name="_token" value="{{csrf_token()}}">
                    <input type="hidden" name="id" id="{{$places[0]->id}}" value="{{$places[0]->id}}">
                    <div class="star-place">
                    <fieldset class="rating ">
                        <input type="radio" id="star5" name="rating" value="5"/><label class="full" for="star5" title="Tuyệt vời - 5 sao"></label>
                        <input type="radio" id="star4half" name="rating" value="4.5"/><label class="half" for="star4half" title="Rất tốt - 4.5 sao"></label>
                        <input type="radio" id="star4" name="rating" value="4"/><label class="full" for="star4" title="Tốt - 4 sao"></label>
                        <input type="radio" id="star3half" name="rating" value="3.5"/><label class="half" for="star3half" title="Bình thường - 3.5 sao"></label>
                        <input type="radio" id="star3" name="rating" value="3"/><label class="full" for="star3" title="Ổn - 3 sao"></label>
                        <input type="radio" id="star2half" name="rating" value="2.5"/><label class="half" for="star2half" title="Có vẻ tệ - 2.5 sao"></label>
                        <input type="radio" id="star2" name="rating" value="2"/><label class="full" for="star2" title="Hơi tệ - 2 sao"></label>
                        <input type="radio" id="star1half" name="rating" value="1.5"/><label class="half" for="star1half" title="Tệ - 1.5 sao"></label>
                        <input type="radio" id="star1" name="rating" value="1"/><label class="full" for="star1" title="Quá tệ - 1 sao"></label>
                        <input type="radio" id="starhalf" name="rating" value="0.5"/><label class="half" for="starhalf" title="Cực kỳ tệ - 0.5 sao"></label>
                        {{--<button type="submit">submit</button>--}}
                    </fieldset>
                    <p class="p-place">&nbsp;&nbsp;<b>{{$avg_fb}}/5</b> trong <b>{{$no_of_fb}}</b> đánh giá</p>
                </div>
                {{--</form>--}}
                <script>
                    $('.rating').on('change', function () {
                        var star = $('.rating input:checked').val();
                        var id = '{{$places[0]->id}}';
                        // alert(star);
                        $.ajax({
                            type: 'GET',
                            url: 'dg',
                            data: {id:id, star: star},
                            success: function (id, star) {
                                console.log(id, star);
                                $('.rating input').attr('disabled', 'disabled');
                            }
                        });
                    });


                </script>
                <div class="clearfix"></div>
                <div id="sdiv-info">
                    <input type="hidden" value="{{$places[0]->short_des}}">
                    <div class="info-place" id="sinfo">
                        <p>
                            <script>
                                var sinfo = $("#sdiv-info input").val();
                                $("#sinfo").html(sinfo);
                            </script>
                        </p>
                    </div>
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
                        <div class="tab-content text-center" id="div-info">
                            <input type="hidden" value="{{$places[0]->full_des}}">
                            <div class="tab-pane active" id="info">
                                <p>
                                    <script>
                                        var info = $("#div-info input").val();
                                        $("#info").html(info);
                                    </script>
                                </p>
                            </div>
                            <div class="tab-pane" id="map">
                                <input type="hidden" value="{{$places[0]->map}}">
                                <p>Địa chỉ: <b>{{$places[0]->address}}</b> </p>
                                <div class="map-responsive" id="map-cc">
                                    <script>
                                        var map = $("#map input").val();
                                        $("#map-cc").html(map);
                                    </script>

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
                    @foreach($same_place as $sp)
                    <div class="item-lq">
                        <a href="{{route('detailplace',$sp->id)}}"><img src="storage/image/{{$sp->piname}}" alt="{{$sp->name}}" class="img-raised rounded img-fluid"></a>
                        <div class="">
                            <p class="h4-lq"><a href="{{route('detailplace',$sp->id)}}">{{$sp->name}}</a></p>
                        </div>
                    </div>
                    @endforeach
                </div>
            </div>
        </div>
        @switch($id_type)
            @case(1)

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
                                                @foreach($anuong->chunk(3) as $count => $item)
                                                <div class="carousel-item row no-gutters {{ $count == 0 ? 'active' : '' }}">
                                                    @foreach($item as $au)
                                                    <div class="col-4 float-left">
                                                        <div class="item-lq">
                                                            <a href="{{route('detailplace',$au->id)}}"><img src="storage/image/{{$au->piname}}" alt="{{$au->name}}" class="img-raised rounded img-fluid"></a>
                                                            <h4 class="h4-ct"><a href="{{route('detailplace',$au->id)}}">{{$au->name}}</a></h4>
                                                        </div>
                                                    </div>
                                                    @endforeach
                                                </div>
                                                @endforeach
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
                                                @foreach($anuong->chunk(1) as $count => $item)
                                                <div class="carousel-item row no-gutters {{ $count == 0 ? 'active' : '' }}">
                                                    @foreach($item as $au)
                                                    <div class="col-12 float-left">
                                                        <div class="item-lq">
                                                            <a href="{{route('detailplace',$au->id)}}"><img src="storage/image/{{$au->piname}}" alt="{{$au->name}}" class="img-raised rounded img-fluid"></a>
                                                            <h4 class="h4-ct"><a href="{{route('detailplace',$au->id)}}">{{$au->name}}</a></h4>
                                                        </div>
                                                    </div>
                                                    @endforeach
                                                </div>
                                                @endforeach
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
                                                @foreach($khachsan->chunk(3) as $count => $item)
                                                    <div class="carousel-item row no-gutters {{ $count == 0 ? 'active' : '' }}">
                                                        @foreach($item as $au)
                                                            <div class="col-4 float-left">
                                                                <div class="item-lq">
                                                                    <a href="{{route('detailplace',$au->id)}}"><img src="storage/image/{{$au->piname}}" alt="{{$au->name}}" class="img-raised rounded img-fluid"></a>
                                                                    <h4 class="h4-ct"><a href="{{route('detailplace',$au->id)}}">{{$au->name}}</a></h4>
                                                                </div>
                                                            </div>
                                                        @endforeach
                                                    </div>
                                                @endforeach
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
                                                @foreach($khachsan->chunk(1) as $count => $item)
                                                    <div class="carousel-item row no-gutters {{ $count == 0 ? 'active' : '' }}">
                                                        @foreach($item as $au)
                                                            <div class="col-12 float-left">
                                                                <div class="item-lq">
                                                                    <a href="{{route('detailplace',$au->id)}}"><img src="storage/image/{{$au->piname}}" alt="{{$au->name}}" class="img-raised rounded img-fluid"></a>
                                                                    <h4 class="h4-ct"><a href="{{route('detailplace',$au->id)}}">{{$au->name}}</a></h4>
                                                                </div>
                                                            </div>
                                                        @endforeach
                                                    </div>
                                                @endforeach
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
                @break
            @case(2)
                @break
            @case(3)
                @break

            @default
        @endswitch
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
		        @foreach($image as $i)
                'storage/image/{{$i->name}}',
				// 'https://s3-us-west-2.amazonaws.com/forconcepting/800Wide50Quality/city.jpg',
				// 'https://s3-us-west-2.amazonaws.com/forconcepting/800Wide50Quality/deer.jpg',
				// 'https://s3-us-west-2.amazonaws.com/forconcepting/800Wide50Quality/flowers.jpg',
				// 'https://s3-us-west-2.amazonaws.com/forconcepting/800Wide50Quality/food.jpg',
				// 'https://s3-us-west-2.amazonaws.com/forconcepting/800Wide50Quality/guy.jpg',
				// 'https://s3-us-west-2.amazonaws.com/forconcepting/800Wide50Quality/landscape.jpg',
				// 'https://s3-us-west-2.amazonaws.com/forconcepting/800Wide50Quality/lips.jpg',
				// 'https://s3-us-west-2.amazonaws.com/forconcepting/800Wide50Quality/night.jpg',
				// 'https://s3-us-west-2.amazonaws.com/forconcepting/800Wide50Quality/table.jpg',
                @endforeach
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