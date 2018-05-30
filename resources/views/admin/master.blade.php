<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <link rel="apple-touch-icon" sizes="76x76" href="source/admin/assets/img/apple-icon.png">
    <link rel="icon" type="image/png" href="source/admin/assets/img/favicon.png">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>
        Now UIDashboard
    </title>
    <base href="{{asset('')}}">
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
    <!--     Fonts and icons     -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
    <link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">
    <!-- CSS Files -->
    <link href="source/admin/assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="source/admin/assets/css/now-ui-dashboard.css?v=1.1.0" rel="stylesheet" />
    <!-- CSS Just for demo purpose, don't include it in your project -->
    <link href="source/admin/assets/demo/demo.css" rel="stylesheet" />
    <!--   Core JS Files   -->
    <script src="source/admin/assets/js/core/jquery.min.js"></script>
    <script src="source/admin/assets/js/core/popper.min.js"></script>
    <script src="source/admin/assets/js/core/bootstrap.min.js"></script>
    <script src="source/admin/assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
    <!--  Google Maps Plugin    -->
    <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
    <!-- Chart JS -->
    <script src="source/admin/assets/js/plugins/chartjs.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
    <script src="source/admin/js/chartist.min.js" type="text/javascript"></script>
    <!--  Notifications Plugin    -->
    <script src="source/admin/assets/js/plugins/bootstrap-notify.js"></script>
    <!-- Control Center for Now Ui Dashboard: parallax effects, scripts for the example pages etc -->
    <script src="source/admin/assets/js/now-ui-dashboard.min.js?v=1.1.0" type="text/javascript"></script>
    <!-- Now Ui Dashboard DEMO methods, don't include it in your project! -->
    <script src="source/admin/assets/demo/demo.js"></script>
    <script>
        $(document).ready(function() {
            // Javascript method's body can be found in assets/js/demos.js
            demo.initDashboardPageCharts();
        });
    </script>

    {{-- style --}}
        {{-- Css --}}
        <link href="source/admin/css/style.css" rel="stylesheet" />
        {{-- Js --}}

    <!-- statistics -->
        <!-- Css -->
        <link href="source/admin/css/statistics.css" rel="stylesheet" />
        <!-- Js -->

    {{-- place --}}
        {{-- Css --}}
        <link href="source/admin/css/place.css" rel="stylesheet" />
        {{-- Js --}}

    {{-- placetype --}}
        {{-- Css --}}
        <link href="source/admin/css/placetype.css" rel="stylesheet" />
        {{-- Js --}}

    {{-- feedback --}}
        {{-- Css --}}
        <link href="source/admin/css/adminfeedback.css" rel="stylesheet" />
        {{-- Js --}}
    
    {{-- userlocation --}}
        {{-- Css --}}
        <link href="source/admin/css/userlocation.css" rel="stylesheet" />
        {{-- Js --}}
        
</head>

<body class="">
    <div class="wrapper ">

        {{-- sidebar --}}
        <div class="sidebar" data-color="orange">
            @include('admin.sidebar')
        </div>
        {{-- end sidebar --}}

        <div class="main-panel">

            <!-- Navbar -->
            @include('admin.navbar')
            <!-- End Navbar -->

            <div class="panel-header" style="height: unset">
                <!-- <canvas id="bigDashboardChart"></canvas> -->
            </div>

            {{-- content --}}
            @yield('content')
            {{-- end content --}}

            {{-- footer --}}
            <footer class="footer">
                @include('admin.footer')
            </footer>
            {{-- end footer --}}
        </div>
    </div>
</body>

</html>
