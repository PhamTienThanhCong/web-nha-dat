@extends('template.admin')

@section('css')
    <link rel="stylesheet" href="{{ asset('css/my_account.css') }}">
@stop

@section('title')
    Tài khoản của tôi
@stop

@section('content')
{{-- Show thonong tin tài khoản --}}
    <div class="col-12 grid-margin stretch-card" id="change-my_account">
        <div class="card">
            <div class="card-body">
                @if(Session::has('error'))
                    <h4 class="text-danger">{{ Session::get('error') }}</h4>
                @endif
                @if(Session::has('success'))
                    <h4 class="text-success">{{ Session::get('success') }}</h4>
                @endif
                <p class="card-description"> Tài khoản của {{ Session::get('name') }} </p>
                <br>
                <div class="avatar-preview">
                    <img width="100%" height="100%" src="{{ asset("images/avatar/".Session::get('avatar')) }}" alt="">
                </div>
                <div class="name-preview">
                    <h3>
                        {{ Session::get('name') }}
                    </h3>
                </div>
                <div class="infor-preview">
                    <div class="email-preview">
                        <i class="mdi mdi-wallet-travel" style="font-size: 18px"></i>
                        Công ty: {{ $admin->email }}
                    </div>
                    <div class="email-preview">
                        <i class="mdi mdi-email-outline" style="font-size: 18px"></i>
                        Email: {{ $admin->email }}
                    </div>
                    <div class="email-preview">
                        <i class="mdi mdi-phone" style="font-size: 18px"></i>
                        Số điện thoại: {{ $admin->phone_number }}
                    </div>
                    <br>
                </div>
                @if (Session::get('level') != '3')
                    <div class="result-account">
                        <div class="box-result"> 
                            <h1>
                                {{-- {{ $admin->number_course }} --}}
                            </h1>
                            <p>
                                khóa học
                            </p>
                        </div>
                        <div class="box-result"> 
                            <h1>
                                {{-- {{ $course->number_order }} --}}
                            </h1>
                            <p>
                                đã bán
                            </p>
                        </div>
                        <div class="box-result"> 
                            <h1>
                                {{-- {{ round($course->number_rate, 2) }} --}}
                            </h1>
                            <p>
                                đánh giá
                            </p>
                        </div>
                    </div>
                @else
                    <div class="result-account">
                        <div class="box-result" style="width: 410px;"> 
                            <h1>
                                {{ Session::get('name') }}
                            </h1>
                            <p>
                                Đây là tài khoản admin
                            </p>
                        </div>
                    </div>
                @endif
                <div class="change-info-btn">
                    <button class="btn btn-outline-danger btn-fw" style="margin: auto;" onclick="showChange()">
                        Chỉnh sửa thông tin
                    </button>
                    <button class="btn btn-gradient-dark btn-fw" style="margin: auto;" onclick="showChangePassword()">
                        Thay đổi mật khẩu
                    </button>
                </div>
            </div>
        </div>
    </div>
    {{-- Show thông tin tài khoản --}}

    {{-- Đổi thông tin tài khoản --}}
    @include('partials.admin.change_infor')
    {{-- Đổi thông tin tài khoản --}}

    {{-- Đổi mật khẩu --}}
    @include('partials.admin.change_password')
    {{-- Đổi mật khẩu --}}

@stop

@section('js')
    <script>
        function showChange(){
            document.getElementById("change-my-account").style.display="block";
        }
        function hinddenChange(){
            document.getElementById("change-my-account").style.display="none";
        }
        function showChangePassword(){
            document.getElementById("change-my-password").style.display="block";
        }
        function hinddenChangePass(){
            document.getElementById("change-my-password").style.display="none";
        }
    </script>
@stop
