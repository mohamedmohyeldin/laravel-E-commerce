<?php

namespace App\Http\Controllers\admin\mails;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use App\Mail\contact;
class mailController extends Controller
{
   public function index()
   {
      return view('admin.en.mails.mailForm');
   }
   public function send(Request $request)
   {
       //send mail
       $sendData = $request->only('email','message');
       if(Mail::to($request->email)->send(new contact($sendData))){
           return redirect()->back()->with('Success','The mail has successfully sent');
       }else{
            return redirect()->back()->with('Error','Something went wrong');
       }
       
   }
}
