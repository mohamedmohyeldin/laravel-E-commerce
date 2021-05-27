@extends('admin.en.layout')
@section('title','Create Product')
@section('content')
{{-- write your html  --}}

<div class="col-md-12">
    <!-- general form elements -->
    <div class="card card-primary">
      <div class="card-header">
        <h3 class="card-title">Create Product</h3>
      </div>

      <div class="form-group text-center mr-auto col-12">
        @if (Session()->has('Success'))
            <div class="alert alert-success text-center">{{session()->get('Success')}}</div>
            @php
                session()->forget('Success')
            @endphp
        @endif
        @if (Session()->has('Error'))
            <div class="alert alert-danger text-center">{{session()->get('Error')}}</div>
            @php
                session()->forget('Error')
            @endphp
        @endif
            
      </div>

      <!-- /.card-header -->
      <!-- form start -->
      <form method="POST" action="{{asset('admin/products/store')}}" enctype="multipart/form-data">
        @csrf
        <div class="card-body">
          <div class="form-group">
            <label for="exampleInputEmail1">name</label>
            <input type="text" name="name" class="form-control" id="exampleInputEmail1" value="{{old('name')}}">
            @error('name')
                <div class="alert alert-danger">{{$message}}</div>
            @enderror
          </div>
          <div class="form-group">
            <label for="exampleInputPassword1">price</label>
            <input type="number" name = "price"class="form-control" id="exampleInputPassword1" value="{{old('price')}}">
            @error('price')
            <div class="alert alert-danger">{{$message}}</div>
            @enderror
          </div>
          <div class="form-group">
            <label for="exampleInputPassword1">stock</label>
            <input type="number" name = "stock"class="form-control" id="exampleInputPassword1" value="{{old('stock')}}">
            @error('stock')
            <div class="alert alert-danger">{{$message}}</div>
            @enderror
          </div>
          <div class="form-group">
            <label for="exampleInputPassword1">code</label>
            <input type="text" name = "code"class="form-control" id="exampleInputPassword1" value="{{old('code')}}">
            @error('code')
            <div class="alert alert-danger">{{$message}}</div>
            @enderror
          </div>
          <div class="form-group">
            <label for="exampleInputPassword1">details</label>
            <textarea name="details" id="" cols="30" rows="10" class="form-control">{{old('details')}}</textarea>
            @error('details')
            <div class="alert alert-danger">{{$message}}</div>
            @enderror
          </div>
          <div class="form-group">
            <label for="exampleInputPassword1">sub category</label>
            <select name="sub_cat_id" id="" class="form-control">
                @foreach ($subs as $key=>$value)
                    <option {{$value->id == old('sub_cat_id') ? 'selected' : ''}} value="{{$value->id}}">{{$value->name}}</option>
                @endforeach
            </select>
            @error('sub_cat_id')
            <div class="alert alert-danger">{{$message}}</div>
            @enderror
          </div>
          <div class="form-group">
            <label for="exampleInputFile">Image</label>
            <div class="input-group">
              <div class="custom-file">
                <input type="file" name="image" class="custom-file-input" id="exampleInputFile">
                <label class="custom-file-label" for="exampleInputFile">Choose file</label>
              </div>
            </div>
            @error('image')
                <div class="alert alert-danger">{{$message}}</div>
            @enderror
          </div>
        </div>
        <!-- /.card-body -->

        <div class="card-footer">
          <button type="submit" class="btn btn-primary">Submit</button>
        </div>
      </form>
    </div>
    <!-- /.card -->

  </div>

@endsection 