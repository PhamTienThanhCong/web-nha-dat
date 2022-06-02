<div class="col-12 grid-margin stretch-card" id="change-my-account">
    <div class="card">
        <div class="card-body">
            <h4 class="card-title">Quản lý tài khoản</h4>
            <p class="card-description"> Chỉnh sửa đi nhé cậu yêu :3 </p>
            <form class="forms-sample" method="post" action="{{ route('admin.myAccountUpdate') }} " enctype="multipart/form-data">
                @csrf
                {{ method_field('PUT') }}
                <div class="form-group">
                    <label for="exampleInputName1">Tên tài khoản</label>
                    <input type="text" name="name" class="form-control" id="exampleInputName1" placeholder="Name" value="{{ $admin->name }}"
                        required>
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail3">Địa chỉ Email</label>
                    <input type="email" name="email" class="form-control" id="exampleInputEmail3" placeholder="Email" value="{{ $admin->email }}"
                        required>
                </div>
                <div class="form-group">
                    <label for="exampleInputphone">Số điện thoại</label>
                    <input type="text" name="phone_number" class="form-control" id="exampleInputphone" placeholder="Số điện thoại" value="{{ $admin->phone_number }}"
                        required>
                </div>
                <div class="form-group">
                    <label>Ảnh đại diện mới</label>
                    <div class="input-group col-xs-12">
                        <input type="file" name="avatar" class="form-control file-upload-info"
                            placeholder="Upload Image">
                    </div>
                </div>
                <div class="form-group">
                    <label for="myCompany">Tên công ty làm việc</label>
                    <input type="text" name="company" class="form-control" id="myCompany" placeholder="Tên công ty làm việc" value="{{ $admin->company }}"
                        required>
                </div>
                <div class="form-group">
                    <label for="exampleTextarea1">Địa chỉ </label>
                    <textarea class="form-control" name="address" id="exampleTextarea1" rows="4" style="resize: vertical;" required> {{ $admin->address }} </textarea>
                </div>
                <button type="submit" class="btn btn-gradient-primary me-2">Thay đổi</button>
                <button class="btn btn-light" onclick="hinddenChange()">Cancel</button>
            </form>
        </div>
    </div>
</div>