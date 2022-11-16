<?php

namespace App\Http\Controllers\Api;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
class AuthController extends Controller
{



public function login (Request $request)
{
    // checking validator if fail
    $validate=Validator::make($request->all(),[
        'email'=>'required|email',
        'password'=>'required',
    ]);
    
    if ($validate->fails()) {
        $error=[];
       $messages=$validate->errors()->messages();
    foreach ($messages as $key => $value) {
        $error[]=$value[0];
    }
    return $this->error($error,'',400);
    }

  if(Auth::attempt(['email'=>$request->email,'password'=>$request->password])){

// generating token after success
    $token = auth()->user()->createToken('token')->plainTextToken;
    $data=[
        'token'=>$token,
        'user'=>auth()->user()

    ];
    return $this->success('Login succesfull',$data,200);
  }else{
    return $this->error('Invalid credientials','',400);

  }


}




    
}
