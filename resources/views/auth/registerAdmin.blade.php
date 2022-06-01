<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Đăng kí</title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/@mdi/font@6.5.95/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="{{ asset('css/vendor.bundle.base.css') }}">
    <link rel="stylesheet" href="{{ asset('css/style.css') }}">
    <!-- plugins:css -->
    {{-- <link rel="shortcut icon" href="../../assets/images/favicon.ico" /> --}}
  </head>
  <body>
    <div class="container-scroller">
      <div class="container-fluid page-body-wrapper full-page-wrapper">
        <div class="content-wrapper d-flex align-items-center auth">
          <div class="row flex-grow">
            <div class="col-lg-4 mx-auto">
              <div class="auth-form-light text-left p-5">
                <div class="brand-logo">
                  <h3 style="text-align: center">
                    Trang web nhà đất
                  </h3>
                  {{-- <img src="https://www.bootstrapdash.com/demo/purple/jquery/template/assets/images/logo.svg?fbclid=IwAR2-aXLOwDRHAWJWAhHA4aJ7TH6OBamcVIl4QTM-F0uZkxsvSTUwdriGkK0"> --}}
                </div>
                <h4>Trở trành một nhà môi giới</h4>
                @if(Session::has('error'))
                  <h4 class="text-danger">{{ Session::get('error') }}</h4>
                @endif
                <form class="pt-3" method="post" action={{ route('admin.registerProcessing') }}>
                  @csrf
                  <div class="form-group">
                    <input type="text" name="name" class="form-control form-control-lg" id="exampleInputUsername1" placeholder="Nhập họ và tên" required>
                  </div>
                  <div class="form-group">
                    <input type="email" name=email class="form-control form-control-lg" id="exampleInputEmail1" placeholder="Nhập Email" required>
                  </div>
                  <div class="form-group">
                    <input type="password" name="password" class="form-control form-control-lg" id="exampleInputPassword1" placeholder="Nhập mật khẩu" required>
                  </div>
                  <div class="mb-4">
                    <div class="form-check">
                      <label class="form-check-label text-muted">
                        <input type="checkbox" class="form-check-input" required> Tôi chấp nhận điều khoản & dịch vụ </label>
                    </div>
                  </div>
                  <div class="mt-3">
                    <button class="btn btn-block btn-gradient-primary btn-lg font-weight-medium auth-form-btn">Đăng kí</button>
                  </div>
                    <div class="text-center mt-4 font-weight-light"> Bạn đã có tài khoản? <a href="{{ route('admin.login') }}" class="text-primary">Đăng nhập</a>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
        <!-- content-wrapper ends -->
      </div>
      <!-- page-body-wrapper ends -->
    </div>
    <!-- container-scroller -->
    <!-- plugins:js -->
    <script src="{{ asset('js/vendor.bundle.base.js') }}"></script>
    <script src="{{ asset('js/off-canvas.js') }}"></script>
    <script src="{{ asset('js/hoverable-collapse.js') }}"></script>
    <script src="{{ asset('js/misc.js') }}"></script>
    <!-- endinject -->
  </body>
</html>