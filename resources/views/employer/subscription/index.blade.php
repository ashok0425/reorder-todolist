@extends('employer.master')
@section('main-content')
@php
    define('PAGE','employeer')
@endphp

<div class="container">
  
  <x-title title="Subscription & Packages" />
<div class="row">
    <div class="col-md-4">
    <div class="card px-0">
    @if (isset($current_subscription))
        <div class="card-header bg-primary">
          <h2 class="card-title text-white font-weight-bold text-center">  Current Package</h2>
        </div>
   <div class="card-body text-center">
   <h1 class="text-center font-weight-bold"> {{$current_package->name}}</h1>
   <h6>Job Listing Limit ({{$current_package->limit}})</h6>
   </div>
    @else   
   <div class="card-body">

 <strong>
    N/A
 </strong>
</div>

    @endif
    </div>
    </div>
</div>

<h4>More Package</h4>
<div class="row">
  @foreach ($packages as $item)
      
  <div class="col-md-4">
    <div class="card px-0">
 
        <div class="card-header bg-primary">
          <h2 class="card-title text-white font-weight-bold text-center">  {{$item->name}}</h2>
        </div>
   <div class="card-body text-center">
   <h6>Job Listing Limit:{{$item->limit}}</h6>
   <h6>Price : 
    
    @if ($item->offer_price!=0||$item->offer_price!=null)
    {{$item->offer_price}} <s>{{$item->price}}</s>
    @else
    {{$item->price}}
    @endif
   </h6>

   <a class="btn btn-primary " href="">Subscribe and pay</a>
   </div>
 
    </div>
    </div>
  @endforeach

</div>

</div>

@endsection