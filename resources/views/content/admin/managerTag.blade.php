@extends('template.admin')

@section('css')
    {{-- Css code --}}
@stop

@section('title')
    Quản lý thẻ tag
@stop

@section('content')

<div class="col-12 grid-margin stretch-card">
    <div class="card">
      <div class="card-body">
        <h4 class="card-title">Quản lý thẻ Tag</h4>
        @if(Session::has('success'))
            <h5 class="text-success">{{ Session::get('success') }}</h5>
        @endif
        @if(Session::has('error'))
            <h5 class="text-danger">{{ Session::get('error') }}</h5>
        @endif
        <form method="post" action="{{ route('admin.createTag') }}"class="forms-sample">
          <div class="form-group">
            <label>Thêm thẻ tag</label>
            <input type="file" class="file-upload-default">
            <div class="input-group col-xs-12">
                @csrf
              <input type="text" name="link_name" class="form-control file-upload-info" placeholder="Thêm thẻ mới">
              <span class="input-group-append">
                <button class="file-upload-browse btn btn-gradient-primary" style="height:100%; margin-left:5px" type="submit">Upload</button>
              </span>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>

  <div class="col-lg-12 grid-margin stretch-card">
    <div class="card">
      <div class="card-body">
        <h4 class="card-title">Danh sách thẻ tag</h4>
        </p>
        <table class="table table-bordered">
          <thead>
            <tr style="text-align: center">
              <th> # </th>
              <th> Tên </th>
              <th> Đường dẫn </th>
              <th> Độ tiếp cận </th>
              <th> Xóa </th>
            </tr>
          </thead>
          <tbody>
            @foreach ($types as $index => $type)
                <tr>
                    <td style="text-align: center"> 
                        {{ $index+1 }} 
                    </td>
                    <td> {{ $type->link_name }} </td>
                    <td> {{ $type->link }} </td>
                    <td style="text-align: center">
                        ! 
                    </td>
                    <td style="text-align: center">
                        <a href="{{ route('admin.destroyTag',$type->id) }}">
                            Xóa thẻ tag
                        </a>
                    </td>
                </tr>
            @endforeach
          </tbody>
        </table>
      </div>
    </div>
  </div>
@stop

@section('js')
@stop