<html lang="en" xmlns="http://www.w3.org/1999/html">

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8"/>
    {{--<link rel="apple-touch-icon" sizes="76x76" href="source/admin/assets/img/apple-icon.png">--}}
    <link rel="icon" type="image/png" href="{{asset('source/admin/assets/img/icon-admin.png')}}">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <title>
        Admin
    </title>
    {{-- <link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png"> --}}
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>

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

    <style>
        .form-check .form-check-input:checked+.form-check-sign .check {
            background: rgba(255,113,29,0.9)!important;
        }
    </style>
</head>
<body>
<div class="page-header-image" style="background-image:url({{asset('source/admin/assets/img/icon-admin.png')}})"></div>
<div class="container" style="padding-top: 50px;">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card" style="border-radius: 10px">
                <div class="card-header-image" style="background-color: rgba(255,113,29,0.9)">
                    <div class="col-md-8 offset-md-4">
                        <img src="{{asset('storage/image/user-male-circle.png')}}"
                             style="width: 100px; height: 100px;" alt="logo admin">
                    </div>
                </div>
                <div class="card-body">
                    <form action="{{ route('admin.login.submit') }}" method="POST">
                        @csrf
                        <div class="form-group row">
                            <div class="col-md-8 offset-md-2">
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <i class="fa fa-user-circle"></i>
                                    </span>
                                    <input id="email"
                                              class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}"
                                              name="email" type="email" placeholder="Email..." value="a@b.c" required>
                                </div>

                            </div>
                            @if ($errors->has('email'))
                                <span class="text-danger"><strong>{{ $errors->first('email') }}</strong></span>
                            @endif
                        </div>

                        <div class="form-group row">
                            <div class="col-md-8 offset-md-2">
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <i class="fa fa-unlock-alt"></i>
                                    </span>
                                    <input id="password" type="password"
                                              class="form-control{{ $errors->has('password') ? ' is-invalid' : '' }}"
                                              name="password" placeholder="Mật khẩu..." value="123456"
                                              required>

                                    @if ($errors->has('password'))
                                        <span class="invalid-feedback">
                                        <strong>{{ $errors->first('password') }}</strong>
                                    </span>
                                    @endif
                                </div>
                            </div>
                        </div>

                        <div class="form-group row">
                            <div class="col-md-6 offset-md-4">
                                <div class="form-check">
                                    <label class="form-check-label">
                                        <input class="form-check-input" type="checkbox" name="remember" {{ old('remember') ? 'checked' : '' }}> Ghi nhớ
                                        <span class="form-check-sign">
                                        <span class="check" style=""></span>
                                    </span>
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="form-group row mb-0">
                            <div class="col-md-8 offset-md-4">
                                <button type="submit" class="btn btn-round" style="background-color: rgba(255,113,29,0.9)">
                                    ĐĂNG NHẬP
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>

</html>
