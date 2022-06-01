<div class="col-12 grid-margin stretch-card" id="change-my-password">
    <div class="card">
        <div class="card-body">
            <h4 class="card-title">Thay đổi mật khẩu</h4>
            <p class="card-description"> Chỉnh sửa mật khẩu đi nhé cậu yêu :3 </p>
            <form class="forms-sample" method="post" action="{{ route('admin.myAccountUpdatePassword') }} ">
                @csrf
                {{ method_field('PUT') }}
                <div class="form-group">
                    <label for="exampleInputPassword4">Mật khẩu cũ</label>
                    <input type="password" name="password" class="form-control" id="exampleInputPassword4" placeholder="Password"
                        required>
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword4">Mật khẩu mới</label>
                    <input type="password" name="password2" class="form-control" id="exampleInputPassword4" placeholder="Password"
                        required>
                </div>
                <button type="submit" class="btn btn-gradient-primary me-2">Thay đổi</button>
                <button class="btn btn-light" onclick="hinddenChangePass()">Cancel</button>
            </form>
        </div>
    </div>
</div>