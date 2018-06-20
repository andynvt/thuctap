<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Login Form For Admin</title>
    <link rel="stylesheet" href="{{asset('source/admin/css/login.css')}}">
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<script language="javascript">
    function change_color_user() {
        document.getElementById("tdn").style.color = 'white';
        document.getElementById("mk").style.color = '#aaa';
    }

    function change_color_pass() {
        document.getElementById("tdn").style.color = '#aaa';
        document.getElementById("mk").style.color = 'white';
    }
</script>
<body>
<div class="nen">
    <div class="login-wrap">
        <div class="login-html">
            <h1 class="h1"> Tour Guide </h1>
            <h2 class="h2">ĐĂNG NHẬP<sub class="sub"> ADMIN </sub></h2>

            <div class="login-form">
                    <form action="{{ route('admin.login.submit') }}" method="POST">
                        {{ csrf_field() }}
                        <div class="group">
                            <label id="tdn" for="email" class="label">Tên đăng nhập</label>
                            <input class="input" type="email" onfocus="change_color_user()" value="blabla@gmail.com" name="email">
                        </div>
                        @if ($errors->has('email'))
                            <span class="text-danger"><strong>{{ $errors->first('email') }}</strong></span>
                        @endif
                        <div class="group">
                            <label id="mk" for="password" class="label">Mật khẩu</label>
                            <input class="input" type="password" onfocus="change_color_pass()" value="123456" name="password">
                        </div>

                        <div class="group">
                            <input id="checkdangnhap" type="checkbox"
                                   class="check" {{ old('remember') ? 'checked' : '' }}>
                            <label for="checkdangnhap"> <span class="icon"></span> Ghi nhớ</label>
                        </div>

                        <br>
                        <div class="group">
                            <input type="submit" class="button" value="Đăng nhập" name="submit">
                        </div>
                        <div class="hr"></div>
                        <div class="foot-lnk">
                            <a href="#forgot">Quên mật khẩu?</a>
                        </div>
                    </form>
            </div>
        </div>
    </div>
</div>
</body>

</html>
