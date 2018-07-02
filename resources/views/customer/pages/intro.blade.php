@extends('customer.master')
<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCEaPFYsmK4vcKMFPuyPbt2IVtEpq3WNPI&callback=initMap"></script>

{{-- script xác định vị trí hiện tại --}}
<script> 
  // Note: This example requires that you consent to location sharing when
  // prompted by your browser. If you see the error "The Geolocation service
  // failed.", it means you probably did not give permission for the browser to
  // locate you.
  	var map, infoWindow;
  	function initMap() {
  		var directionsDisplay = new google.maps.DirectionsRenderer;
  		var directionsService = new google.maps.DirectionsService;

	    map = new google.maps.Map(document.getElementById('map-intro'), {
	      center: {lat: -34.397, lng: 150.644},
	      zoom: 15
	    });
	    infoWindow = new google.maps.InfoWindow;

	    directionsDisplay.setMap(map);

	    // Try HTML5 geolocation.
	    if (navigator.geolocation) {
	      	navigator.geolocation.getCurrentPosition(function(position) {
	        	var pos = {
		          	lat: position.coords.latitude,
		          	lng: position.coords.longitude
		        };

	        	infoWindow.setPosition(pos);
	        	infoWindow.setContent('Bạn đang ở đây.');
	        	infoWindow.open(map);
	        	map.setCenter(pos);

	      		var la = pos.lat;
	      		var long = pos.lng;

	      		$.ajax({
			        type: "GET",
			        url: "cal-dis",
			        dataType: "json",
			        data: {lati: la, longi: long},
			        success: function(data){
			        	console.log(data);

		        		var base_url = {!! json_encode(url('/')) !!}

			        	var introhtml = $('.fadeitem').html();

			        	var time = "";
			        	
			        	// Đổi thời gian
			        	function secondsToHms(d) {
						    d = Number(d);
						    var h = Math.floor(d / 3600);
						    var m = Math.floor(d % 3600 / 60);
						    var s = Math.floor(d % 3600 % 60);

						    var hDisplay = h > 0 ? h + (h == 1 ? " giờ, " : " giờ, ") : "";
						    var mDisplay = m > 0 ? m + (m == 1 ? " phút, " : " phút, ") : "";
						    var sDisplay = s > 0 ? s + (s == 1 ? " giây" : " giây") : "";
						    return hDisplay + mDisplay + sDisplay; 
						}
						// End Đổi thời gian

						// Đổ dữ liệu địa điểm được gợi ý
			        	for($i = 0; $i < data[0].length; $i++){

			        		time = secondsToHms(data[0][$i]['time']);

			        		$('.viewplace').append(introhtml).children('#item'+($i-$i)).attr('id', 'item'+ ($i+1));

			        		$('#item' +($i+1)+ ' .anhdiadiem').attr('src','storage/image/'+data[0][$i]['pimage']);
			        		$('#item' +($i+1)+ ' .tendiadiem').html(data[0][$i]['pname']);
			        		$('#item' +($i+1)+ ' .diachi').html(data[0][$i]['address']);
			        		$('#item' +($i+1)+ ' .khoangcach').html( (data[0][$i]['dist']/1000).toFixed(2) + " km");
			        		$('#item' +($i+1)+ ' .thoigian').html(time);
			        		$('#item' +($i+1)+ ' .danhgia').html( (data[0][$i]['avgstar']).toFixed(2) + " / 5.00 " + "(" + data[0][$i]['cntfbp'] + " đánh giá)");
			        		$('#item' +($i+1)+ ' .tenloai').html(data[0][$i]['ptname']);
			        		$('#item' +($i+1)+ ' .mota').html(data[0][$i]['short_des']);

			        		$('#item' +($i+1)+ ' .placelink').attr('href', base_url + '/chi-tiet-dia-diem/'+ data[0][$i]['id']);

			        		$('#item' +($i+1)+ ' .id-place').attr('value', data[0][$i]['id']);
			        	}
			        	// End Đổ dữ liệu địa điểm được gợi ý

			        	// Đổ hình ảnh vào modal
			        	$('.open-img').on('click', function(){
		        			var id_img = $(this).prev('.id-place').val();
		        			var itemimg = $('.fadeitemintrocarousel').html();

		        			$(this).attr('data-target', '#modalimg'+id_img);
		        			$('.modalimage').attr('id', 'modalimg'+id_img);

		        			$('#modalimg'+id_img+ ' .intro-carousel .resCarousel-inner').empty();

		        			for($i = 0; $i < data[1].length; $i++){
		        				if(data[1][$i][0]['id'] == id_img){
		        					$('#modalimg'+id_img+ ' .modal-title').html('Hình ảnh về '+ data[0][$i]['pname']);
		        					for($j = 0; $j < data[1][$i].length; $j++){
			        					$('#modalimg'+id_img+ ' .intro-carousel .resCarousel-inner').append(itemimg).children('#itemimg'+($j-$j)).attr('id', 'itemimg'+ ($j+1));
			        					$('#itemimg'+ ($j+1) + ' img').attr('src','storage/image/' + data[1][$i][$j]['pimg']);
			        				}
		        				}
		        			}
		        		});
		        		// End Đổ hình ảnh vào modal

		        		// Nút hiện ẩn khung thông tin
			        	$(function () {
						    var i = 1;
						    $('.home-minimize-btn').on('click', function(){
						      if(i == 1){
						        $(".hide-place-info-box").css('transform', 'translateY(150%)');
						        $(".home-minimize-btn i").css('transform', 'rotate(-180deg)');
						        i = 0;
						      }
						      else {
						        $(".hide-place-info-box").css('transform', 'translateY(0)');
						        $(".home-minimize-btn i").css('transform', 'rotate(0deg)');
						        i = 1;
						      }
						    });
						});
						// End Nút hiện ẩn khung thông tin

						// Hiển thị địa điểm gợi ý lên map
						var locations = new Array();

			        	for($i = 0; $i < data[0].length; $i++){
			        		var res = data[0][$i]['pcoord'].split(", ");
			        		var name = data[0][$i]['pname'];
						  	locations.push([name, res[0], res[1]]);
						}

					    var infowindow1 = new google.maps.InfoWindow();

					    var marker, i;

					    var currentposition = la+", "+long;

					    for (i = 0; i < locations.length; i++) {
					      	marker = new google.maps.Marker({
					        	position: new google.maps.LatLng(locations[i][1], locations[i][2]),
					        	map: map
					      	});

					      	google.maps.event.addListener(marker, 'click', (function(marker, i) {
					      		var directionposition = locations[i][1]+", "+locations[i][2];
					        	return function() {
					          		infowindow1.setContent(locations[i][0]);
					          		infowindow1.open(map, marker);
					          		calculateAndDisplayRoute(directionsService, directionsDisplay, currentposition, directionposition);
					        	}
					      	})(marker, i));
					    }

					    function calculateAndDisplayRoute(directionsService, directionsDisplay, start, end) {
					        directionsService.route({
					          origin: start,
					          destination: end,
					          travelMode: 'DRIVING'
					        }, function(response, status) {
					          if (status === 'OK') {
					            directionsDisplay.setDirections(response);
					          } else {
					            window.alert('Directions request failed due to ' + status);
					          }
					        });
			      		}
					    // End Hiển thị địa điểm gợi ý lên map
					    
			        	$('.carousel-item:first').addClass('active');
			        }
			    });
	      	}, 
	      	function() {
	        	handleLocationError(true, infoWindow, map.getCenter());
	      	});

	    } else {
	      	// Browser doesn't support Geolocation
	      	handleLocationError(false, infoWindow, map.getCenter());
	    }
  	}

  	// alert(la);

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
<script src="source/customer/js/trangchu.js"></script>
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
	            <li class="nav-item" data-toggle="tooltip" title="Bản đồ">
	              <a data-toggle="modal" data-target="#mapmodal" href="#" class="nav-link"><i class="material-icons">place</i>Bản đồ</a>
	            </li>
	            <li class="nav-item" data-toggle="tooltip" title="Tìm kiếm">
	              <a href="#home-search-form" class="nav-link"><i class="material-icons">search</i>Tìm kiếm</a>
	            </li>
	            <li class="nav-item">
                    <div class="dropdown" style="float:left;">
                       <a class="nav-link dropbtn"><i class="material-icons">apps</i>Thành phố</a>
                        <div class="dropdown-content">
                            <div class="row col-12">
                                @foreach(App\City::all() as $c20)
                                    <div class="col-3">
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
	          </ul>
	          <!-- form search -->
	          <div id="home-search-form">
	            <button type="button" class="close">×</button>
	            <form action="{{route('customer.tim-kiem')}}" method="get">
	                <input type="search" value="" placeholder="Nhập địa điểm cần tìm" />
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
	                <div class="carousel-inner viewplace">

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

	    {{-- modal image --}}
	    <div class="modal fade modalimage" tabindex="-1" role="dialog">
	      <div class="modal-dialog modal-lg" role="document">
	        <div class="modal-content">
	          <div class="modal-header">
	            <h3 class="modal-title">Hình ảnh về Bến Ninh Kiều</h3>
	            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	              <i class="material-icons">clear</i>
	            </button>
	          </div>
	          <div class="modal-body intro-carousel">
	            <div class="container p8">
			        <div class="resCarousel" data-items="1-2-2-2" data-interval="false" data-slide="1" data-animator="lazy">
			            <div class="resCarousel-inner">
			            </div>
			            <button class='leftRs'><</button>
			            <button class='rightRs'>></button>
			        </div>
			    </div>
	          </div>
	          <div class="modal-footer">
	            <button type="button" class="btn btn-primary btn-link" data-dismiss="modal">Đóng</button>
	          </div>
	        </div>
	      </div>
	    </div>
	    {{-- end modal image --}}
	</div>

	<div class="fadeitem">
		<div class="carousel-item" id="item0">
		    <img class="d-block w-100 anhdiadiem" src="storage/image/cho-noi.jpg" alt="First slide" style="height: 100vh">
		    <div class="place-intro">
		      	<a class="placelink" href="#" style="color: white">
		            <h3>Địa điểm gần đây</h3>
		            <h1 class="tendiadiem">Chợ nổi</h1>
		            <div class="row">
		          		<div class="col-6 place-intro-left">
		                    <h4>Địa chỉ:</h4>
		                    <h4>Khoảng cách:</h4>
		                    <h4>Thời gian đi:</h4>
		                    <h4>Đánh giá:</h4>
		                    <h4>Loại hình:</h4>
		          		</div>
		              	<div class="col-6 place-intro-right">
		                    <h4 class="diachi">Kế Bến Ninh Kiều</h4>
		                    <h4 class="khoangcach">3 km</h4>
		                    <h4 class="thoigian">15 phút (xe ô tô)</h4>
		                    <h4 class="danhgia">4.3 / 5 (20 đánh giá)</h4>
		                    <h4 class="tenloai">Ăn chơi</h4>
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
		                  	<input class="id-place" type="hidden">
	                    	<a class="nav-link open-img" href="#" data-toggle="modal">
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
		                <p class="mota">Mô tả</p>
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
	</div>

	<div class="fadeitemintrocarousel">
		<div class="item" id="itemimg0">
            <div class="tile">
                <div>
                    <img src="storage/image/1big.jpg">
                </div>
            </div>
        </div>
	</div>

	<div class="locate"></div>
</body>

<style>
	.footer{
		display: none;
	}
	#map-intro {
        height: 100%;
        position: unset !important;
  	}

  	.fadeitem,
  	.fadeitemintrocarousel {
  		display: none;
  	}
</style>

{{-- intro-carousel --}}
<script>
    //ResCarouselCustom();
    var pageRefresh = true;

    function ResCarouselCustom() {
        var items = $("#dItems").val(),
            slide = $("#dSlide").val(),
            speed = $("#dSpeed").val(),
            interval = $("#dInterval").val()

        var itemsD = "data-items=\"" + items + "\"",
            slideD = "data-slide=\"" + slide + "\"",
            speedD = "data-speed=\"" + speed + "\"",
            intervalD = "data-interval=\"" + interval + "\"";


        var atts = "";
        atts += items != "" ? itemsD + " " : "";
        atts += slide != "" ? slideD + " " : "";
        atts += speed != "" ? speedD + " " : "";
        atts += interval != "" ? intervalD + " " : ""

        //console.log(atts);

        var dat = "";
        dat += '<h4 >' + atts + '</h4>'
        dat += '<div class=\"resCarousel\" ' + atts + '>'
        dat += '<div class="resCarousel-inner">'
        for (var i = 1; i <= 14; i++) {
            dat += '<div class=\"item\"><div><h1>' + i + '</h1></div></div>'
        }
        dat += '</div>'
        dat += '<button class=\'btn btn-default leftRs\'><i class=\"fa fa-fw fa-angle-left\"></i></button>'
        dat += '<button class=\'btn btn-default rightRs\'><i class=\"fa fa-fw fa-angle-right\"></i></button>    </div>'
        console.log(dat);
        $("#customRes").html(null).append(dat);

        if (!pageRefresh) {
            ResCarouselSize();
        } else {
            pageRefresh = false;
        }
        //ResCarouselSlide();
    }

    $("#eventLoad").on('ResCarouselLoad', function() {
        //console.log("triggered");
        var dat = "";
        var lenghtI = $(this).find(".item").length;
        if (lenghtI <= 30) {
            for (var i = lenghtI; i <= lenghtI + 10; i++) {
                dat += '<div class="item"><div class="tile"><div><h1>' + (i + 1) + '</h1></div><h3>Title</h3><p>content</p></div></div>'
            }
            $(this).append(dat);
        }
    });
</script>
{{-- end intro-carousel --}}
@endsection