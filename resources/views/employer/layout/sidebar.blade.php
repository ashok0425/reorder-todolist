<nav id="sidebar" class="sidebar" style="overflow-y: visible!important">
    <div class="sidebar-content js-simplebar">
        @php
            $logo=DB::table('websites')->value('image');
        @endphp
        <a class="sidebar-brand" href="{{ route('employer.dashboard') }}">
  <span class="align-middle"><img src="{{ asset($logo) }}" alt="" width="80"></span>
</a>

        <ul class="sidebar-nav">
       

            <li class="sidebar-item <?php  echo PAGE=='dashboard'?'active':'' ?>">
                <a class="sidebar-link" href="{{ route('employer.dashboard') }}">
      <i class="fas fa-wallet"></i><span class="align-middle">Dashboard</span>
    </a>
            </li>


            <li class="sidebar-item <?php  echo PAGE=='profile'?'active':'' ?>">
                <a class="sidebar-link" href="{{route('employer.profile')}}">
      <i class="fas fa-user"></i><span class="align-middle">Profile</span>
    </a>
            </li>

       


  
              <li class="sidebar-item <?php  echo PAGE=='applied_job'?'active':'' ?>">
                  <a data-target="#applied_job" data-toggle="collapse" class="sidebar-link" aria-expanded="false">
    <i class="fas fa-users"></i> <span class="align-middle">Applied job</span>
      </a>
                  <ul id="applied_job" class="sidebar-dropdown list-unstyled collapse <?php  echo PAGE=='applied_job'?'show':'' ?>" data-parent="#sidebar" style="">
  
                      <li class="sidebar-item"><a class="sidebar-link" href="{{route('employer.applied_job.index',['pending'=>1])}}">New Application</a></li>
                      <li class="sidebar-item"><a class="sidebar-link" href="{{route('employer.applied_job.index')}}">All Application</a></li>
                   
  
                  </ul>
              </li>



         

            <li class="sidebar-item <?php  echo PAGE=='jobs'?'active':'' ?>">
                <a data-target="#product" data-toggle="collapse" class="sidebar-link" aria-expanded="false">
  <i class="fas fa-envelope"></i> <span class="align-middle">Listed Jobs</span>
    </a>
                <ul id="product" class="sidebar-dropdown list-unstyled collapse <?php  echo PAGE=='jobs'?'show':'' ?>" data-parent="#sidebar" style="">

                    <li class="sidebar-item"><a class="sidebar-link" href="{{route('employer.vacancy.index')}}">All jobs</a></li>
                    <li class="sidebar-item"><a class="sidebar-link" href="{{route('employer.vacancy.create')}}">Add Job</a></li>
                 

                </ul>
            </li>


            <li class="sidebar-item <?php  echo PAGE=='subscription'?'active':'' ?>">
                <a class="sidebar-link" href="{{ route('employer.subscription') }}">
      <i class="fas fa-wallet"></i><span class="align-middle">Subscription</span>
    </a>
            </li>

        </ul>
    </div>
</nav>
