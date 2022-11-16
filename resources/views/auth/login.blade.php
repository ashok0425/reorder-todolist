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
                <div class="col-lg-6 col-md-6 d-flex">
                    <div class="text-white max-w400 align-self-center">
                        {{-- <div class="logo">
                            <a href="{{route('/')}}"><img src="{{asset('frontend/images/logo-white2.png')}}" alt=""></a>
                        </div> --}}
                        <h2 class="m-b10">Login To You Now</h2>
                        <p class="m-b40">Login and get connect with differernt company & get offer of latest job in Nepal</p>
                        <ul class="list-inline m-a0">
                            <li><a target="_blank" href="https://www.facebook.com/" class="site-button white facebook circle "><i class="fab fa-facebook-f"></i></a></li>
                            <li><a target="_blank" href="https://www.linkedin.com/" class="site-button white linkedin circle "><i class="fab fa-linkedin-in"></i></a></li>
                            <li><a target="_blank" href="https://www.instagram.com/" class="site-button white instagram circle "><i class="fab fa-instagram"></i></a></li>
                            <li><a target="_blank" href="https://twitter.com/" class="site-button white twitter circle "><i class="fab fa-twitter"></i></a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="login-2 submit-resume p-a30 seth">
                        <div class="tab-content nav">
                            @if (session('status'))
                            <div class="mb-4 font-medium text-sm text-green-600">
                                {{ session('status') }}
                            </div>
                        @endif

                        @if (session('register'))
                        <div class="mb-4 font-medium text-sm text-green-600">
                          Email verification link is sent to your email.Check to verify your email.
                        </div>
                    @endif
                        <x-errormsg />
                            <form id="login" class="tab-pane active col-12 p-a0 " action="{{route('login')}}" method="POST">
                                @csrf
                                <p class="font-weight-600">If you have an account with us, please log in.</p>
                                <div class="form-group">
                                    <label>E-Mail Address*</label>
                                    <div class="input-group">
                                        <input name="email" required="" class="form-control" placeholder="Your Email Address" type="email" required>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label>Password *</label>
                                    <div class="input-group">
                                        <input name="password" required="" class="form-control " placeholder="Type Password" type="password" required>
                                    </div>
                                </div>
                                <div class="text-center">
                                    <button class="site-button btn-block">login</button>
                                 <div class="d-flex mt-3 justify-content-between">
                                    {{-- <a  href="{{route('password.request')}}" class=" float-end"><i class="fa fa-user"></i> Login As Employer</a> --}}
                                    <a  href="{{route('password.request')}}" class=" float-end"><i class="fa fa-unlock-alt"></i> Forgot Password</a> 
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
