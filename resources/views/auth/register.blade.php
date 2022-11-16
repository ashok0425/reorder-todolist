@extends('frontend.layout.master')
@push('style')
<style>
    .form-group{
        margin-bottom: 10px!important;
    }
</style>
@endpush
@section('content')
<div class="page-content bg-white login-style2" style="background-image: url({{asset('frontend/images/bg.webp')}}); background-size: cover;">
    <div class="section-full">
        <!-- Login Page -->
        <div class="container">
            <div class="row">
                <div class="col-lg-5 col-md-5 d-flex order-2 order-md-1">
                    <div class="text-white max-w400 align-self-center">
                        <div class="logo">
                            <a href="{{route('/')}}"><img src="images/logo-white2.png" alt=""></a>
                        </div>
                        <h2 class="m-b10">Register To You Now</h2>
                        <p class="m-b40">Register and get connect with differernt company & get offer of latest job in Nepal</p>
                        <ul class="list-inline m-a0">
                            <li><a target="_blank" href="https://www.facebook.com/" class="site-button white facebook circle "><i class="fab fa-facebook-f"></i></a></li>
                            <li><a target="_blank" href="https://www.linkedin.com/" class="site-button white linkedin circle "><i class="fab fa-linkedin-in"></i></a></li>
                            <li><a target="_blank" href="https://www.instagram.com/" class="site-button white instagram circle "><i class="fab fa-instagram"></i></a></li>
                            <li><a target="_blank" href="https://twitter.com/" class="site-button white twitter circle "><i class="fab fa-twitter"></i></a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-7 col-md-7 order-1 order-md-2">
                    <div class="login-2 submit-resume p-a30 seth  w-100 mt-4">
                        <div class="tab-content nav">
                            @if (session('status'))
                            <div class="mb-4 font-medium text-sm text-green-600">
                                {{ session('status') }}
                            </div>
                        @endif
                        <x-errormsg />
                            <form class="tab-pane active col-12 p-a0 " action="{{route('register')}}" method="POST">
                                @csrf
                                <h4>Sign Up</h4>
<div class="row">

    @if (isset($_GET['as']))
   
      <div class="form-group col-md-6">
        <label>Organization Name *</label>
        <div class="input-group">
            <input name="name" required class="form-control border" placeholder="Enter Full name" type="text" required value="{{old('name')}}">
        </div>
    </div>

    <div class="form-group col-md-6">
        <label>Organization Address *</label>
        <div class="input-group">
            <input name="address" required class="form-control border" placeholder="Enter Organization Address" type="text" required value="{{old('address')}}">
        </div>
    </div>
<input type="hidden" name="Isemployer" value="1">
    <div class="form-group col-md-6">
        <label>Register number (optional)</label>
        <div class="input-group">
            <input name="pan_no"  class="form-control border" placeholder="Enter Pan/Vat number" type="text" required value="{{old('pan_no')}}">
        </div>
    </div>

    <div class="form-group col-md-6">
        <label>Telephone no</label>
        <div class="input-group">
            <input name="telephone"  class="form-control border" placeholder="Enter Telephone number" type="tel" required value="{{old('telephone')}}">
        </div>
    </div>
      @else 

      <div class="form-group col-md-12">
        <label>Full Name*</label>
        <div class="input-group">
            <input name="name" required class="form-control border" placeholder="Enter Full name" type="text" required value="{{old('name')}}">
        </div>
    </div>
    @endif
    <div class="form-group col-md-6">
        <label>phone*</label>
        <div class="input-group">
            <input name="phone" required class="form-control border" placeholder="Your Phone Number" type="number" required 
            
            value="{{old('phone')}}">
        </div>
    </div>    

                                <div class="form-group col-md-6">
                                    <label>E-Mail Address*</label>
                                    <div class="input-group">
                                        <input name="email" required class="form-control border" placeholder="Your Email Address" type="email" required 
                                        value="{{old('email')}}">
                                    </div>
                                </div>
                           
                                <div class="form-group col-md-6">
                                    <label>Password *</label>
                                    <div class="input-group">
                                        <input name="password" required class="form-control " placeholder="Type Password" type="password" required>
                                    </div>
                                </div>


                                <div class="form-group col-md-6">
                                    <label>Confirm Password *</label>
                                    <div class="input-group">
                                        <input name="password_confirmation" required class="form-control " placeholder="Confirm Password " type="password" required>
                                    </div>
                                </div>
                            </div>
                                <div class="text-center">
                                    <button class="site-button btn-block">SIgnUp</button>
                                 <div class="d-flex mt-3 justify-content-between flex-column flex-md-row">
                                    @if (isset($_GET['as']))
                                    <a  href="{{route('register')}}" class=" float-end"><i class="fa fa-user"></i> SignUp As Jobsekeer</a>
                                     
                                    @else 
                                    <a  href="{{route('register',['as'=>'employer'])}}" class=" float-end"><i class="fa fa-user"></i> SignUp As Employer</a>
                                  
                                    @endif
                                 
                                 </div>
                                </div>
                            </form>
                           
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Login Page END -->
    </div>
  
</div>
    @endsection
