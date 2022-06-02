@extends('template.admin')

@section('css')
    <link rel="stylesheet" href="{{ asset('css/my_account.css') }}">
@stop

@section('title')
    Quản lý Nhân viên
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
            <p class="card-description"> 
                <a href="{{ route('admin.managerSeller') }}">Quản lý Nhân viên</a> <span> / </span>
                Tài khoản của {{ $admin->name }} 
            </p>
            <br>
            <div class="avatar-preview">
                <img width="100%" height="100%" src="{{ asset("images/avatar/".$admin->avatar) }}" alt="">
            </div>
            <div class="name-preview">
                <h3>
                    {{ $admin->name }}
                </h3>
            </div>
            <div class="infor-preview">
                <div class="email-preview">
                    <i class="mdi mdi-wallet-travel" style="font-size: 18px"></i>
                    Công ty: 
                    @if ($admin->company == null)
                        <span style="color: red">Trường này còn thiếu</span>
                    @else
                        {{ $admin->company }}
                    @endif
                </div>
                <div class="email-preview">
                    <i class="mdi mdi-email-outline" style="font-size: 18px"></i>
                    Email: {{ $admin->email }}
                </div>
                <div class="email-preview">
                    <i class="mdi mdi-phone" style="font-size: 18px"></i>
                    Số điện thoại:
                    @if ($admin->phone_number == null)
                        <span style="color: red">Trường này còn thiếu</span>
                    @else
                        {{ $admin->phone_number }}
                    @endif
                </div>
                <div class="email-preview">
                    <i class="mdi mdi-google-maps" style="font-size: 18px"></i>
                    Địa chỉ:
                    @if ($admin->address == null)
                        <span style="color: red">Trường này còn thiếu</span>
                    @else
                        {{ $admin->address }}
                    @endif
                </div>
                <br>
            </div>
            <div class="result-account">
                <div class="box-result"> 
                    <a href="" style="text-decoration: none; color: #343A40;">
                        <h1>
                            {{-- {{ $admin->number_courses }} --}}
                        </h1>
                        <p>
                            khóa học
                        </p>
                    </a>
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
                        {{-- {{ round($course->number_rate,2) }} --}}
                    </h1>
                    <p>
                        đánh giá
                    </p>
                </div>
            </div>
            <div class="change-info-btn">
                <button class="btn btn-gradient-info btn-fw" style="margin: auto;" onclick="contacts()">
                    Liên hệ ngay
                </button>
                @if ($admin->level == '1')
                    <a href="{{ route('admin.SellerUpdate', [$admin->id, 2]) }}">
                        <button class="btn btn-outline-success btn-fw" style="margin: auto;" onclick="Block()">
                            Duyệt seller
                        </button>
                    </a>
                    <a href="{{ route('admin.SellerUpdate', [$admin->id, 4]) }}">
                        <button class="btn btn-gradient-dark btn-fw" style="margin: auto;" onclick="Block()">
                            Hủy seller
                        </button>
                    </a>
                @elseif ($admin->level == '2')
                    <a href="{{ route('admin.SellerUpdate', [$admin->id, 0]) }}">
                        <button class="btn btn-gradient-dark btn-fw" style="margin: auto;" onclick="Block()">
                            Chặn seller
                        </button>
                    </a>
                @elseif ($admin->level =='0')
                    <a href="{{ route('admin.SellerUpdate', [$admin->id, 2]) }}">
                        <button class="btn btn-outline-info btn-fw" style="margin: auto;" onclick="Block()">
                            Hủy chặn seller
                        </button>
                    </a>
                @endif
            </div>
        </div>
    </div>
</div>
{{-- Show thông tin tài khoản --}}

@stop

@section('js')
<script>
    function contacts(){
        alert('Nhân viên {{ $admin->name }} xin nghe')
    }
</script>
@stop
