@extends('admin.en.layout')
@section('title','all products')
@section('links')
  <!-- DataTables -->
  <link rel="stylesheet" href="{{asset('plugins/datatables-bs4/css/dataTables.bootstrap4.min.css')}}">
  <link rel="stylesheet" href="{{asset('plugins/datatables-responsive/css/responsive.bootstrap4.min.css')}}">
  <link rel="stylesheet" href="{{asset('plugins/datatables-buttons/css/buttons.bootstrap4.min.css')}}">
@endsection
@section('content')
    <div class="col-12 text-left">
        <a href="{{asset('admin/products/create')}}" class="btn btn-success text-left">Add Product</a>
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

    <table id="datatable" class="table table-bordered table-striped">
    <thead>
    <tr>
      <th>Id</th>
      <th>Name</th>
      <th>Price</th>
      <th>Stock</th>
      <th>Code</th>
      <th>Action</th>

    </tr>
    </thead>
    <tbody>
       
     @foreach ($products as $key=>$value)
        <tr>
            <td>{{$value->id}}</td>
            <td>{{$value->name}}</td>
            <td>{{$value->price}}</td>
            <td>{{$value->stock}}</td>
            <td>{{$value->code}}</td>
            <td>
                <a href="{{url('admin/products/edit/'.$value->id)}}" class="btn btn-warning">Edit</a>
                {{-- <a href="{{asset('admin/products/destory/'.$value->id)}}" class="btn btn-danger">Delete</a> --}}
                <form method="POST" action="{{asset('admin/products/destroy/'.$value->id)}}">
                    @method('DELETE')
                    @csrf
                    <button class="btn btn-danger">DELETE</button>
                </form>
            </td>
        </tr>
     @endforeach   
    
 
    </tbody>
    
  </table>
@endsection

@section('scripts')
    <!-- DataTables  & Plugins -->
    <script src="{{asset('plugins/datatables/jquery.dataTables.min.js')}}"></script>
    <script src="{{asset('plugins/datatables-bs4/js/dataTables.bootstrap4.min.js')}}"></script>
    <script src="{{asset('plugins/datatables-responsive/js/dataTables.responsive.min.js')}}"></script>
    <script src="{{asset('plugins/datatables-responsive/js/responsive.bootstrap4.min.js')}}"></script>
    <script src="{{asset('plugins/datatables-buttons/js/dataTables.buttons.min.js')}}"></script>
    <script src="{{asset('plugins/datatables-buttons/js/buttons.bootstrap4.min.js')}}"></script>
    <script src="{{asset('plugins/jszip/jszip.min.js')}}"></script>
    <script src="{{asset('plugins/pdfmake/pdfmake.min.js')}}"></script>
    <script src="{{asset('plugins/pdfmake/vfs_fonts.js')}}"></script>
    <script src="{{asset('plugins/datatables-buttons/js/buttons.html5.min.js')}}"></script>
    <script src="{{asset('plugins/datatables-buttons/js/buttons.print.min.js')}}"></script>
    <script src="{{asset('plugins/datatables-buttons/js/buttons.colVis.min.js')}}"></script>
    <script>
        $(function () {
        
        $('#datatable').DataTable({
            "paging": true,
            "lengthChange": false,
            "searching": true,
            "ordering": true,
            "info": true,
            "autoWidth": false,
            "responsive": false,
            "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"]
        });
        });
    </script>
@endsection