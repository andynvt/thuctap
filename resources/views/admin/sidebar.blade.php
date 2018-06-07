<div class="logo">
    <a href="#" class="simple-text logo-mini"></a>
    <a href="#" class="simple-text logo-normal">tour guide</a>
</div>
<div class="sidebar-wrapper">
    <ul class="nav">
        <li {{ (Request::is('admin/thong-ke') ? 'class=active' : '') }}>
            <a href="{{ route('adminthongke') }}">
                <i class="now-ui-icons design_app"></i>
                <p>Thống kê</p>
            </a>
        </li>

        <li @if(Request::is('admin/dia-diem') || Request::is('admin/them-dia-diem') || Request::is('admin/sua-dia-diem'))
                class="active"
            @endif
        >
            <a href="{{ route('admindiadiem') }}">
                <i class="now-ui-icons location_pin"></i>
                <p>Địa điểm</p>
            </a>
        </li>

        <li {{ (Request::is('admin/loai-dia-diem') ? 'class=active' : '') }}>
            <a href="{{ route('adminloaidiadiem') }}">
                <i class="now-ui-icons design_bullet-list-67"></i>
                <p>Loại địa điểm</p>
            </a>
        </li>

        <li @if(Request::is('admin/danh-gia/1') || Request::is('admin/chi-tiet-danh-gia'))
                class="active"
            @endif
        >
            <a href="{{ route('admin.danh-gia',[1]) }}">
                <i class="now-ui-icons ui-2_chat-round"></i>
                <p>Đánh giá</p>
            </a>
        </li>

        <li {{ (Request::is('admin/vi-tri-nguoi-dung') ? 'class=active' : '') }}>
            <a href="{{ route('adminvitringuoidung') }}">
                <i class="now-ui-icons sport_user-run"></i>
                <p>Vị trí người dùng</p>
            </a>
        </li>
    </ul>
</div>