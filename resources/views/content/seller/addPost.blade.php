@extends('template.admin')

@section('css')
    <link rel="stylesheet" href="{{ asset('css/create_course.css') }}">
@stop

@section('title')
    Thêm khóa học
@stop

@section('content')

    {{-- Nội dung --}}
    <div class="col-12 grid-margin stretch-card">
        <div class="card">
          <div class="card-body">
            <h4 class="card-title">Thêm bài đăng mới</h4>
            <p class="card-description"> Hãy thêm đầy đủ thông tin để người khác quan tâm bạn nhé </p>
            <form method="post" action="{{ route('seller.create_post_process') }}"class="forms-sample" enctype="multipart/form-data">
                @csrf
                <div class="form-group">
                    <label for="exampleSelectType">Thể loại</label>
                    <select name="type" class="form-control" id="exampleSelectType">
                        <option value="1">Mua bán</option>
                        <option value="2">Cho thuê</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="exampleInputName1">Tiêu đề</label>
                    <input name="title" type="text" class="form-control" id="exampleInputName1" placeholder="Tiêu đề bài đăng" required>
                </div>
                <div class="form-group">
                    <label for="exampleDescription1">Mô tả ngắn (lí do bán, tình trạng, vv)</label>
                    <textarea class="form-control" name="description1" id="exampleDescription1" rows="4" placeholder="Phần mô tả sẽ xuất hiện khi người dùng tìm kiếm"></textarea>
                </div>
                <div class="form-group">
                    <label for="exampleInputPrice">Giá thành</label>
                    <div class="input-group">
                      <input type="float" name="price" class="form-control" placeholder="Giá thành" required>
                        <select name="price_type" class="dropdown-menu dropdown-toggle" style="display: block; position: relative;margin-left:10px">
                            <option value="1">Triệu</option>
                            <option value="2">Tỷ</option>
                            <option value="3">USD</option>
                        </select>
                    </div>
                  </div>
                <div class="form-group">
                    <label for="exampleInputPassword4">Diện tích (mét vuông)</label>
                    <input type="float" name="size" class="form-control" id="exampleInputPassword4" placeholder="Nhấp điện tích" required>
                </div>
                
                <div class="form-group">
                    <label>Ảnh mô tả</label>
                    <div class="input-group col-xs-12">
                        <input type="file" id="gallery-photo-add" name="images" class="form-control" multiple required>
                    </div>
                    <br>
                    <div id="group-img">
                        
                    </div>
                </div>
                <div class="form-group">
                    <label for="exampledescription2">Mô tả chi tiết(Tình trạng, điện, nước, số phòng ngủ, vv)</label>
                    <textarea class="form-control" name="description2" id="exampledescription2" rows="6" placeholder="Mô tả chi tiết" required></textarea>
                </div>
                <div class="form-group">
                    <label for="exampleAddress">Địa điểm</label>
                    <textarea class="form-control" id="exampleAddress" rows="3" placeholder="Địa điểm tòa nhà" required></textarea>
                </div>
                <div class="form-group">
                    <label for="exampleInputTag">Thẻ tag</label>
                    <select name="tags" class="form-control form-control-sm" id="exampleFormControlSelect3">
                        @foreach ($types as $type)
                            <option value="{{$type->id}}">
                                {{ $type->link_name }}
                            </option>
                        @endforeach
                    </select>
                </div>
                <button type="submit" class="btn btn-gradient-primary me-2">Đăng lên</button>
            </form>
          </div>
        </div>
      </div>
    {{-- Nội Dung --}}
    @stop
    
@section('js')
    <script>
        $(function() {
            var imagesPreview = function(input, placeToInsertImagePreview) {
                if (input.files) {
                    var filesAmount = input.files.length;
                    for (i = 0; i < filesAmount; i++) {
                        var reader = new FileReader();
                        reader.onload = function(event) {
                            $($.parseHTML('<img>')).attr('src', event.target.result).appendTo(placeToInsertImagePreview);
                        }
                        reader.readAsDataURL(input.files[i]);
                    }
                }
            };
            $('#gallery-photo-add').on('change', function() {
                imagesPreview(this, '#group-img');
            });
        });
    </script>
@stop
