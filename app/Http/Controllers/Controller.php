<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Support\Facades\Validator;

class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

    public function success($message,$data=null,$code=200){
      return response()->json([
        'success'=>true,
         'message'=>$message,
         'data'=>$data,
      ],$code);
    }

    public function error($message,$data=null,$code){
        return response()->json([
            'success'=>false,
             'message'=>$message,
             'data'=>$data,
          ],$code);
    }



    public function CheckValidation(Request $request,$data){
      $validate=Validator::make($request->all(),$data);
    if ($validate->fails()) {
        $error=[];
       $messages=$validate->errors()->messages();
    foreach ($messages as $key => $value) {
        $error[]=$value[0];
    }
    return $this->error($error,'',400);
    }
    }
}
