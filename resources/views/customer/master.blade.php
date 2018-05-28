<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8"/>
    {{-- <link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png"> --}}
    <link rel="icon" type="image/png" href="source/customer/images/icon_location.png">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <title>
        Danh sách các địa điểm
    </title>
    <base href="{{asset('')}}">
    <meta id="Viewport" content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no'
          name='viewport'/>

    <!--     Fonts and icons     -->
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
    <!-- CSS Files -->
    <link href="source/customer/assets/css/material-kit.css?v=2.0.3'" rel="stylesheet"/>
    <!-- CSS Just for demo purpose, don't include it in your project -->
    <link href="source/customer/assets/demo/demo.css" rel="stylesheet"/>

    <!--   Core JS Files   -->
	<script src="source/customer/assets/js/core/jquery.min.js" type="text/javascript"></script>
	<script src="source/customer/assets/js/core/popper.min.js" type="text/javascript"></script>
	<script src="source/customer/assets/js/core/bootstrap-material-design.min.js" type="text/javascript"></script>
	<script src="source/customer/assets/js/plugins/moment.min.js"></script>
	<!--	Plugin for the Datepicker, full documentation here: https://github.com/Eonasdan/bootstrap-datetimepicker -->
	<script src="source/customer/assets/js/plugins/bootstrap-datetimepicker.js" type="text/javascript"></script>
	<!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
	<script src="source/customer/assets/js/plugins/nouislider.min.js" type="text/javascript"></script>
	<!-- Control Center for Now Ui Kit: parallax effects, scripts for the example pages etc -->
	<script src="source/customer/assets/js/material-kit.js?v=2.0.3" type="text/javascript"></script>

	{{-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> --}}

	<script>
	    $(document).ready(function () {
	        //init DateTimePickers
	        materialKit.initFormExtendedDatetimepickers();

	        // Sliders Init
	        materialKit.initSliders();
	    });
	</script>

	{{-- Style css --}}
		<link rel="stylesheet" href="source/customer/css/style.css">

	{{-- List place --}}
		<!--CSS -->
	    <link rel="stylesheet" href="source/customer/css/list_place.css">
	    <link rel="stylesheet" href="source/customer/css/style.css">
	    {{-- Js --}}
		<script src="source/customer/js/list_place.js"></script>

	{{-- Intro --}}
		{{-- Css --}}
	    <link rel="stylesheet" href="source/customer/css/trangchu.css">
	    <!-- Js -->
	    <script src="source/customer/js/trangchu.js"></script>
	    <script src="source/customer/js/time.js"></script>

</head>

<body class="sidebar-collapse">

	{{-- header --}}
    <!--<section id="home">-->
    <div class="menuNav">
        @include('customer.header')
    </div>
    <!--</section>-->
    {{-- end header --}}

    {{-- content --}}
	@yield('content')
	{{-- end content --}}

	{{-- footer --}}
	<footer class="footer" data-background-color="black">
	    @include('customer.footer')
	</footer>
	{{-- end footer --}}

</body>
</html>
