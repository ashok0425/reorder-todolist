@extends('employer.master')
@section('main-content')
<style>
    .rounded{
        border-radius: 10px!important;
    }
    .fw-600{
        font-weight: 600;
    }
</style>
@php
    define('PAGE','dashboard')
@endphp
<div class="container-fluid p-0">
@php
use App\Models\Subscription;

    $package=Subscription::where('user_id',auth()->user()->id)->first();
    $applied=DB::table('applied_jobs')->where('employer_id',auth()->user()->id)->get()->count();
    $jobs=DB::table('vacancies')->where('user_id',auth()->user()->id)->get()->count();

@endphp
<div class="row">
 


    <div class="col-md-3">
        <div class="card shadow-sm border rounded">
            <div class="card-body text-center">
                   <h4>{{$jobs}}</h4>
                   <h4 class="fw-600">Total Jobs</h4>
            </div>
        </div>
    </div>


    

    <div class="col-md-3">
        <div class="card shadow-sm border rounded">
            <div class="card-body text-center">
                   <h4>{{$applied}}</h4>
                   <h4 class="fw-600">Total Applied</h4>
            </div>
        </div>
    </div>

    <div class="col-md-5">
        <div class="card shadow-sm border rounded">
            <div class="card-body text-center">
                   <h4>
                    @isset($package)    
                    {{$package->package->name}}
                    @endisset
                </h4>
                   <h4 class="fw-600">Active Subscription</h4>
            </div>
        </div>
    </div>
</div>
  

</div>
@endsection
