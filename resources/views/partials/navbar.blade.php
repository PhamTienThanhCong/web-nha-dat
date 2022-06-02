<nav class="sidebar sidebar-offcanvas" id="sidebar">
  <ul class="nav">
    <li class="nav-item nav-profile">
      <a href="#" class="nav-link alow_link">
        <div class="nav-profile-image">
          <img src="{{ asset("images/avatar/".Session::get('avatar')) }}" alt="profile">
          <span class="login-status online"></span>
          <!--change to offline or busy as needed-->
        </div>
        <div class="nav-profile-text d-flex flex-column">
          <span class="font-weight-bold mb-2">{{ Session::get('name') }}</span>
          @if (Session::get('level') == '3')
            <span class="text-secondary text-small">Quản lý cấp cao</span>
          @else
            <span class="text-secondary text-small">Môi giới</span>
          @endif
        </div>
        <i class="mdi mdi-bookmark-check text-success nav-profile-badge"></i>
      </a>
    </li>
    @if (Session::get('level') == '3')
      {{-- <li class="nav-item l }}">
        <a class="nav-link" href="">
          <span class="menu-title">Tổng quan</span>
          <i class="mdi mdi-home menu-icon"></i>
        </a>
      </li> --}}
      <li class="nav-item">
        <a class="nav-link" href="{{ route('admin.managerSeller') }}">
          <span class="menu-title">Quản lý môi giới</span>
          <i class="menu-arrow"></i>
          <i class="mdi mdi-account-search menu-icon"></i>
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="">
          <span class="menu-title">Quản lý bài đăng</span>
          <i class="mdi mdi-book-open-page-variant menu-icon"></i>
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="">
          <span class="menu-title">Quản lý thẻ tag</span>
          <i class="mdi mdi-grease-pencil menu-icon"></i>
        </a>
      </li>
    @else
      <li class="nav-item alow_link}}">
          <a class="nav-link alow_link" href="">
            <span class="menu-title">Tạo bài đăng</span>
            <i class="mdi mdi-border-color menu-icon"></i>
          </a>
      </li>
      {{-- <li class="nav-item l }}">
        <a class="nav-link" href="">
          <span class="menu-title">Tổng quan</span>
          <i class="mdi mdi-home menu-icon"></i>
        </a>
      </li> --}}
      <li class="nav-item">
        <a class="nav-link alow_link" href="">
          <span class="menu-title">Quản lý bài đăng</span>
          <i class="menu-arrow"></i>
          <i class="mdi mdi-crosshairs-gps menu-icon"></i>
        </a>
      </li>
    @endif
    
    <li class="nav-item">
      <a class="nav-link" href="{{ route('admin.myAccount') }}">
        <span class="menu-title">Quản lý trang cá nhân</span>
        <i class="mdi mdi-account-key menu-icon"></i>
      </a>
    </li>
  </ul>
</nav>