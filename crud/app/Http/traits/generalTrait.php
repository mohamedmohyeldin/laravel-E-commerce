<?php

namespace App\Http\traits;

trait generalTrait {

    public function uploadPhoto($photo,$folder)
    {
        $fileName = time() .'.'. $photo->extension(); //4651541312.jpg
        $photo->move(public_path('uploads/'.$folder),$fileName);
        return $fileName;
    }

    public function getCurrentLang()
    {
        return app()->getLocale();
    }

    public function returnError($status = 400,$msg = 'Error',$validator = null)
    {
        return response()->json([
            'status'=>false,
            'msg' => $msg,
            'details'=> $validator ? $validator : (object)[],
        ],$status);
    }


    public function returnSuccessMessage($msg = "", $status = 200)
    {
        return response()->json([
            'status' => true,
            'msg' => $msg
        ],$status);
    }

    public function returnData($key, $value, $status=200)
    {
        return response()->json([
            'status' => true,
            $key => $value
        ],$status);
    }

    public function returnValidationError($validator,$msg = 'Validation Error',$status = 403)
    {
        $jsonError = (object)[];
        foreach ($validator->errors()->toArray() as $k => $vs) {
            foreach($vs as $val)
            {
                $jsonError->{$k} = $val;
            }
        }
        return $this->returnError($status,$msg,$jsonError);
    }

}

?>