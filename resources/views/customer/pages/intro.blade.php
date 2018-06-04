@extends('customer.master')

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
		                    <img class="d-block w-100" src="source/customer/images/{{ $it->pimage }}" alt="First slide" style="height: 100vh">
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
	                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3928.814181726177!2d105.7858675147256!3d10.032187475232014!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31a06298aae43e71%3A0xc6a64bdac582285d!2zQuG6v24gTmluaCBLaeG7gXU!5e0!3m2!1svi!2s!4v1526616000428" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
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
	                                <img src="source/customer/images/2big.jpg" alt="Chợ nổi Cái Răng" class="img-raised rounded img-fluid">
	                            </div>
	                        </div>
	                        <div class="col-4 float-left">
	                            <div class="div-img">
	                                <img src="source/customer/images/2small.jpg" alt="Chợ nổi Cái Răng" class="img-raised rounded img-fluid">
	                            </div>
	                        </div>
	                        <div class="col-4 float-left">
	                            <div class="div-img">
	                                <img src="source/customer/images/cho-noi.jpg" alt="Chợ nổi Cái Răng" class="img-raised rounded img-fluid">
	                            </div>
	                        </div>
	                    </div>
	                    <div class="carousel-item row no-gutters ">
	                        <div class="col-4 float-left">
	                            <div class="div-img">
	                                <img src="source/customer/images/cho-noi.jpg" alt="Chợ nổi Cái Răng" class="img-raised rounded img-fluid">
	                            </div>
	                        </div>
	                        <div class="col-4 float-left">
	                            <div class="div-img">
	                                <img src="source/customer/images/cho-noi.jpg" alt="Chợ nổi Cái Răng" class="img-raised rounded img-fluid">
	                            </div>
	                        </div>
	                        <div class="col-4 float-left">
	                            <div class="div-img">
	                                <img src="source/customer/images/cho-noi.jpg" alt="Chợ nổi Cái Răng" class="img-raised rounded img-fluid">
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
</style>
@endsection