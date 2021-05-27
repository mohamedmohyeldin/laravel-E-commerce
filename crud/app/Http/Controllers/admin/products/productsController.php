<?php

namespace App\Http\Controllers\admin\products;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\traits\generalTrait;
use File;
class productsController extends Controller
{
    use generalTrait;
    public function index()
    {
        // $products = DB::select('select * from products');
        $products = DB::table('products')->select('products.*')->get();
        return view('admin.en.products.all',compact('products'));
    }

    public function create()
    {
        //
        $subs = DB::table('sub_cat')->select('*')->get();
       return view('admin.en.products.create',compact('subs'));
    }

    public function store(Request $request)
    {
        $rules = [
            'name'=>'required|string',
            'code'=>'required',
            'price'=>'required|numeric|min:1',
            'stock'=>'required|numeric|min:1|max:100',
            'details'=>'required',
            'sub_cat_id'=>'required|numeric|exists:sub_cat,id',
            'image'=>'required|image|mimes:png,jpg,jpeg|max:1024'
        ];
        $request->validate($rules);
        $singleProduct = $request->except('_token');
        $photoName = $this->uploadPhoto($request->image,'products');
        $singleProduct['image'] = $photoName;
        DB::table('products')->insert($singleProduct);
        return redirect()->back()->with('Success','The product has been inserted successfully');
    }
    public function destroy ($id)
    {
        $singlProduct = DB::table('products')->where('id','=',$id)->first();
        if($singlProduct){
            $photoPath = public_path("uploads\products\\".$singlProduct->image);            
            if(File::exists($photoPath)){
                File::delete($photoPath);
                // unlink($photoPath);
            }
            DB::table('products')->where('id','=',$id)->delete();
            //delete photo

            return redirect()->back()->with('Success','The product has been successfully deleted With ID:'.$id);
        }else{
            return redirect()->back()->with('Error','There is no ID:'.$id);
        }
    }

    public function edit($id)
    {
       $check = DB::table('products')->where('id','=',$id)->exists();
       if($check){
            $product = DB::table('products')->where('id','=',$id)->first();
            $subs = DB::table('sub_cat')->select('*')->get();
            return view('admin.en.products.edit',compact('product','subs'));
       }else{
           return abort(404); 
       }
    }

    public function update(Request $request)
    {
        $rules = [
            'id'=>'required|numeric|exists:products,id',
            'name'=>'required|string',
            'code'=>'required',
            'price'=>'required|numeric|min:1',
            'stock'=>'required|numeric|min:1|max:100',
            'details'=>'required',
            'sub_cat_id'=>'required|numeric|exists:sub_cat,id',
            'image'=>'nullable|image|mimes:png,jpg,jpeg|max:1024'
        ];
        $request->validate($rules);
        $updateData = $request->except('_token','_method','id');
        if($request->has('image')){
           $imageName =  $this->uploadPhoto($request->image,'products');
           $updateData['image'] = $imageName;
        }
        DB::table('products')->where('id','=',$request->id)->update($updateData);
        return redirect('admin/products/all')->with('Success','Data updated Successfully');

    }
}
