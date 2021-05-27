@extends('admin.en.layout')
@section('title','Mails')
@section('content')

<div class="container">
            
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

    <div class="col-12">
        <form method="POST" action={{route('send-mail')}}>
            @csrf
            <div class="form-group">
              <label for="exampleFormControlInput1">Email address</label>
              <input type="email" name="email" class="form-control" id="exampleFormControlInput1" placeholder="name@example.com">
            </div>
            <div class="form-group">
              <label for="exampleFormControlTextarea1">Example textarea</label>
              <textarea class="form-control" name="message" id="exampleFormControlTextarea1" rows="3"></textarea>
            </div>
            <div class="form-group">
                <button class="btn btn-danger text-light form-control">Send Mail</button>
            </div>
          </form>
    </div>
</div>

@endsection