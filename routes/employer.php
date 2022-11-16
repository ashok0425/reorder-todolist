<?php
use Illuminate\Support\Facades\Route;


Route::middleware('auth')->group(function () {
    Route::get('/resume',function(){
        return view('employer.resume');
    })->name('resume');
    
  // Admin profile 
    Route::get('/dashboard','AuthController@show')->name('dashboard');
    Route::get('/profile','AuthController@profile')->name('profile');
    Route::post('/update-profile','AuthController@update')->name('profile.update');
    Route::post('/change-password','AuthController@changePassword')->name('password');
    Route::post('/logout','AuthController@destory')->name('logout');

// vacancy 
Route::resource('/vacancy','VacancyController');



// All Application 
Route::resource('/applied_job','AppliedJobController');


Route::get('/status/active/{id}/{table}','MixController@active')->name('status.active');
Route::get('/status/deactive/{id}/{table}','MixController@deactive')->name('status.deactive');
Route::get('/delete/{id}/{table}','MixController@destroy')->name('delete');



Route::get('/subscription','SubscriptionController@index')->name('subscription');

});

