@extends('customer.master')
<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCEaPFYsmK4vcKMFPuyPbt2IVtEpq3WNPI&callback=initMap"></script>

{{-- script xác định vị trí hiện tại --}}
<script>
  	// Note: This example requires that you consent to location sharing when
  	// prompted by your browser. If you see the error "The Geolocation service
  	// failed.", it means you probably did not give permission for the browser to
  	// locate you.

  	// latitude: vĩ độ
  	// longitude: kinh độ

  	var map, infoWindow;
  	function initMap() {
	    map = new google.maps.Map(document.getElementById('map-intro'), {
	      	center: {lat: -34.397, lng: 150.644},
	      	zoom: 15
	    });
	    infoWindow = new google.maps.InfoWindow;

	    // Try HTML5 geolocation.
	    if (navigator.geolocation) {
	      	navigator.geolocation.getCurrentPosition(function(position) {
	        	var pos = {
	          	lat: position.coords.latitude,
	          	lng: position.coords.longitude
	        };

	        	infoWindow.setPosition(pos);
	        	infoWindow.setContent('Vị trí của bạn.');
	        	infoWindow.open(map);
	        	map.setCenter(pos);
	      	}, function() {
	        	handleLocationError(true, infoWindow, map.getCenter());
	      	});
	    } else {
	      	// Browser doesn't support Geolocation
	      	handleLocationError(false, infoWindow, map.getCenter());
	    }
  	}

  	function handleLocationError(browserHasGeolocation, infoWindow, pos) {
	    infoWindow.setPosition(pos);
	    infoWindow.setContent(browserHasGeolocation ?
	                          // 'Error: The Geolocation service failed.' :
	                          	'Error: Xác định vị trí thất bại.' :
	                          // 'Error: Your browser doesn\'t support geolocation.');
	    						'Error: Trình duyệt của bạn không hỗ trợ xác định vị trí.');
	    infoWindow.open(map);
  	}
</script>
{{-- end script xác định vị trí hiện tại --}}

@section('content')
<body onLoad="Time();" class="signup-page sidebar-collapse" style="height: 100vh">
	<div class="trang-chu">
	    <!-- header -->
	    <nav class="navbar navbar-transparent navbar-color-on-scroll fixed-top navbar-expand-lg" color-on-scroll="100" id="sectionsNav">
	      <div class="container">
	        <div class="navbar-translate">
	          <div id="clockdisplay" class="clock">Đồng hồ ở đây</div>
	          <button class="navbar-toggler" type="button" data-toggle="collapse" aria-expanded="false" aria-label="Toggle navigation">
	            <span class="navbar-toggler-icon"></span>
	            <span class="navbar-toggler-icon"></span>
	            <span class="navbar-toggler-icon"></span>
	          </button>
	        </div>
	        <div class="collapse navbar-collapse">
	          <ul class="navbar-nav ml-auto">
	            <li class="nav-item" style="margin-right: 10px;">
	              <a href="#" class="nav-link" data-toggle="tooltip" title="Trang chủ"><i class="material-icons">home</i>Trang chủ</a>
	            </li>
	            <li class="nav-item" data-toggle="tooltip" title="Bản đồ">
	              <a data-toggle="modal" data-target="#mapmodal" href="#" class="nav-link"><i class="material-icons">place</i>Bản đồ</a>
	            </li>
	            <li class="nav-item" data-toggle="tooltip" title="Tìm kiếm">
	              <a href="#home-search-form" class="nav-link"><i class="material-icons">search</i>Tìm kiếm</a>
	            </li>
	            <li class="dropdown nav-item">
	              <a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown">
	                <i class="material-icons">apps</i> Danh mục
	              </a>
	              <div class="dropdown-menu dropdown-with-icons">
	                <a href="./index.html" class="dropdown-item">
	                  <i class="material-icons">beach_access</i> Du lịch
	                </a>
	                <a href="#" class="dropdown-item">
	                  <i class="material-icons">room_service</i> Ăn uống
	                </a>
	                <a href="https://demos.creative-tim.com/material-kit/docs/2.0/getting-started/introduction.html" class="dropdown-item">
	                  <i class="material-icons">hotel</i> Khách sạn
	                </a>
	              </div>
	            </li>
	          </ul>
	          <!-- form search -->
	          <div id="home-search-form">
	            <button type="button" class="close">×</button>
	            <form>
	                <input type="search" value="" placeholder="type keyword(s) here" />
	                <button type="submit" class="btn btn-primary">Search</button>
	            </form>
	          </div>
	          <!-- end form search -->
	        </div>
	      </div>
	    </nav>
	    <!-- end header -->

	    <!-- content -->
	    <div class="section page-header header-filter purple-filter" id="carousel" style="padding: 0; height: 100vh;">
	      <div class="container" style="padding: 0; max-width: 100%; height: 100vh">
	        <!-- <div class="row"> -->
	          <div class="mr-auto ml-auto">
	            <!-- Carousel Card -->
	            <div class="card card-raised card-carousel" style="margin: 0">
	              <div id="carouselhomeimg" class="carousel slide" data-ride="carousel" data-interval="false" style="height: 100vh">
	                <div class="carousel-inner">

	                	@foreach($intro as $it)
                  		<div class="carousel-item">
		                    <img class="d-block w-100" src="storage/image/{{ $it->pimage }}" alt="First slide" style="height: 100vh">
		                    <div class="place-intro">
		                      	<a href="#" style="color: white">
			                        <h3>Địa điểm gần đây</h3>
			                        <h1>{{ $it->pname }}</h1>
			                        <div class="row">
		                          		<div class="col-6 place-intro-left">
				                            <h4>Địa chỉ:</h4>
				                            <h4>Khoảng cách:</h4>
				                            <h4>Đánh giá:</h4>
				                            <h4>Loại hình:</h4>
		                          		</div>
			                          	<div class="col-6 place-intro-right">
				                            <h4>{{ $it->address }}</h4>
				                            <h4>3km</h4>
				                            <h4>4.3 / 5 (20 đánh giá)</h4>
				                            <h4>{{ $it->ptname }}</h4>
			                          	</div>
			                        </div>
		                      	</a>
		                    </div>
		                    <div class="carousel-caption d-none d-md-block place-info-box">
		                      <div class="brand">
		                        <div class="card card-nav-tabs hide-place-info-box">
		                          <div class="card-header card-header-primary">
		                            <div class="nav-tabs-navigation">
		                              <div class="nav-tabs-wrapper" style="position: relative;">
		                                <ul class="nav nav-tabs" data-tabs="tabs">
		                                  <li class="nav-item">
		                                    <a class="nav-link active" href="#descript" data-toggle="tab">
		                                      <i class="material-icons">description</i> Mô tả
		                                    </a>
		                                  </li>
		                                  <li class="nav-item">
		                                    <a class="nav-link" href="#" data-target="#modalimg" data-toggle="modal">
		                                      <i class="material-icons">insert_photo</i> Hình ảnh
		                                    </a>
		                                  </li>
		                                </ul>
		                              </div>
		                            </div>
		                          </div>
		                          <div class="card-body responsive-card-body">
		                            <div class="tab-content text-center">
		                              <div class="tab-pane active">
		                                <p>{{ $it->short_des }}</p>
		                              </div>
		                              <div class="tab-pane">
		                                <div class="col-md-12 place-info-img">
		                                </div>
		                              </div>
		                            </div>
		                          </div>
		                        </div>
		                      </div>
		                      <button class="btn btn-primary btn-fab home-minimize-btn"><i class="material-icons">keyboard_arrow_up</i></button>
		                    </div>
                  		</div>
	                  	@endforeach

	                </div>

	                <a class="carousel-control-prev change-slide-home-button" href="#carouselhomeimg" role="button" data-slide="prev">
	                  <i class="material-icons">keyboard_arrow_left</i>
	                  <span class="sr-only">Previous</span>
	                </a>
	                <a class="carousel-control-next change-slide-home-button" href="#carouselhomeimg" role="button" data-slide="next">
	                  <i class="material-icons">keyboard_arrow_right</i>
	                  <span class="sr-only">Next</span>
	                </a>
	              </div>
	            </div>
	            <!-- End Carousel Card -->
	          </div>
	        <!-- </div> -->
	      </div>
	    </div>
	    <!-- end content -->

	    <!-- modal map -->
	    <div class="modal fade" id="mapmodal" tabindex="-1" role="dialog">
	      <div class="modal-dialog modal-lg" role="document">
	        <div class="modal-content">
	          <div class="modal-header">
	            <h5 class="modal-title"></h5>
	            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	              <i class="material-icons">clear</i>
	            </button>
	          </div>
	          <div class="modal-body">
	            <div class="map-responsive">
	                {{-- <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3928.814181726177!2d105.7858675147256!3d10.032187475232014!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31a06298aae43e71%3A0xc6a64bdac582285d!2zQuG6v24gTmluaCBLaeG7gXU!5e0!3m2!1svi!2s!4v1526616000428" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe> --}}
					<div id="map-intro"></div>
	            </div>
	          </div>
	          <div class="modal-footer">
	            <button type="button" class="btn btn-primary btn-link" data-dismiss="modal">Đóng</button>
	          </div>
	        </div>
	      </div>
	    </div>
	    <!-- end modal map -->

	    <div class="modal fade" id="modalimg" tabindex="-1" role="dialog">
	      <div class="modal-dialog modal-lg" role="document">
	        <div class="modal-content">
	          <div class="modal-header">
	            <h3 class="modal-title">Hình ảnh về Bến Ninh Kiều</h3>
	            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	              <i class="material-icons">clear</i>
	            </button>
	          </div>
	          <div class="modal-body">
	            <div class="text-center my-3">
	              <div id="recipeCarousel" class="carousel slide w-100" data-interval="false" data-ride="carousel">
	                <div class="carousel-inner w-100" role="listbox">
	                    <div class="carousel-item row no-gutters active">
	                        <div class="col-4 float-left">
	                            <div class="div-img">
	                                <img src="storage/image/2big.jpg" alt="Chợ nổi Cái Răng" class="img-raised rounded img-fluid">
	                            </div>
	                        </div>
	                        <div class="col-4 float-left">
	                            <div class="div-img">
	                                <img src="storage/image/2small.jpg" alt="Chợ nổi Cái Răng" class="img-raised rounded img-fluid">
	                            </div>
	                        </div>
	                        <div class="col-4 float-left">
	                            <div class="div-img">
	                                <img src="storage/image/cho-noi.jpg" alt="Chợ nổi Cái Răng" class="img-raised rounded img-fluid">
	                            </div>
	                        </div>
	                    </div>
	                    <div class="carousel-item row no-gutters ">
	                        <div class="col-4 float-left">
	                            <div class="div-img">
	                                <img src="storage/image/cho-noi.jpg" alt="Chợ nổi Cái Răng" class="img-raised rounded img-fluid">
	                            </div>
	                        </div>
	                        <div class="col-4 float-left">
	                            <div class="div-img">
	                                <img src="storage/image/cho-noi.jpg" alt="Chợ nổi Cái Răng" class="img-raised rounded img-fluid">
	                            </div>
	                        </div>
	                        <div class="col-4 float-left">
	                            <div class="div-img">
	                                <img src="storage/image/cho-noi.jpg" alt="Chợ nổi Cái Răng" class="img-raised rounded img-fluid">
	                            </div>
	                        </div>
	                    </div>
	                </div>
	                <a class="carousel-control-prev" href="#recipeCarousel" role="button" data-slide="prev">
	                  <span class="carousel-control-prev-icon" aria-hidden="true"></span>
	                  <span class="sr-only">Previous</span>
	                </a>
	                <a class="carousel-control-next" href="#recipeCarousel" role="button" data-slide="next">
	                  <span class="carousel-control-next-icon" aria-hidden="true"></span>
	                  <span class="sr-only">Next</span>
	                </a>
	              </div>
	            </div>
	          </div>
	          <div class="modal-footer">
	            <button type="button" class="btn btn-primary btn-link" data-dismiss="modal">Đóng</button>
	          </div>
	        </div>
	      </div>
	    </div>
	</div>
</body>

<script>
	$('.carousel-item:first').addClass('active');
</script>

<style>
	.footer{
		display: none;
	}
	#map-intro {
        height: 100%;
        position: unset !important;
  	}
</style>

{{-- script đưa vị trí lên map --}}
<script>
	var locations = [
      	['Trung Tâm Hội Nghị Tiệc Cưới CB Diamond Palace Cần Thơ', 10.041295, 105.792962, 4],
      	['Công Viên Vòng Xoay Công Viên Nước, 36 Trần Phú, Cái Khế, Ninh Kiều, Cần Thơ, Việt Nam', 10.041788, 105.791230, 5],
      	['Khách sạn Mường Thanh Luxury Cần Thơ', 10.042318, 105.790419, 3],
      	['Khách sạn Victoria Cần Thơ', 10.039361, 105.793527, 2],
      	['Nhà hàng Hoa Sứ', 10.039252, 105.791973, 1]
    ];

    var map = new google.maps.Map(document.getElementById('map-intro'), {
      	zoom: 15,
      	center: new google.maps.LatLng(10.041143, 105.792070),
      	mapTypeId: google.maps.MapTypeId.ROADMAP
    });

    var infowindow = new google.maps.InfoWindow();

    var marker, i;

    for (i = 0; i < locations.length; i++) {  
      	marker = new google.maps.Marker({
        	position: new google.maps.LatLng(locations[i][1], locations[i][2]),
        	map: map
      	});

      	google.maps.event.addListener(marker, 'click', (function(marker, i) {
        	return function() {
          		infowindow.setContent(locations[i][0]);
          		infowindow.open(map, marker);
        	}
      	})(marker, i));
    }
</script>
{{-- end script đưa vị trí lên map --}}

@endsection