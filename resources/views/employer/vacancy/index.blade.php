@extends('employer.master')
@section('main-content')
@php
    define('PAGE','jobs')
@endphp

<div class="container">
  
  <x-title title="All Jobs" :route="route('employer.vacancy.create')" add="Create Job"/>


        

    <div class="card py-3 px-4">
     
        <div class="table-responsive">
        <table id="myTable" class="table table-responsive-sm" >
            <thead>
                <tr>
                    <th>#</th>
                    <th>Thumbnail</th>
                    <th>Position</th>
                    <th>Employer</th>
                    <th>Salary</th>
                    <th>Address</th>
                    <th>Category</th>
                    <th>Created on</th>
                    <th>Status</th>
                    <th>Action</th>
            
                </tr>
            </thead>
            <tbody>
                
                @foreach ($vacancies as $item)
                    <tr>
                        <td>{{$loop->iteration}}</td>
                        <td><img src="{{asset($item->thumbnail)}}" alt="" width="70"></td>
                        <td>{{$item->name}}</td>
                        <td>{{$item->user->name}}</td>
                        <td>{{$item->salary}}</td>
                        <td>{{$item->address}}</td>
                        <td>{{$item->category->category}}</td>
                        <td>{{$item->created_at}}</td>
                        <td>
                        @if ($item->status==1)
                        <a  class="badge bg-success">Activated</a>
                        @else
                        <a class="badge bg-danger">Deactivated</a>

                    @endif
                
                    
                    </td>
                        <td>
                            <a href="{{route('employer.vacancy.edit',$item)}}" class="btn btn-primary"><i class="far fa-edit"></i></a>
                            {{-- <a id="delete" href="{{route('employer.delete',['id'=>$item->id,'table'=>'education'])}}" class="btn btn-danger"><i class="fas fa-times"></i></a> --}}
                            @if ($item->status==1)
                            <a href="{{route('employer.status.deactive',['id'=>$item->id,'table'=>'vacancies'])}}" class="btn btn-primary"><i class="fas fa-thumbs-down"></i></a>
                            @else
                            <a href="{{route('employer.status.active',['id'=>$item->id,'table'=>'vacancies'])}}" class="btn btn-primary"><i class="fas fa-thumbs-up"></i></a> 
                            @endif
                            
                        </td>
                    </tr>
                @endforeach
            </tbody>
              </table>
    
            </div>
</div>
</div>


@endsection

@push('scripts')
  <script>
      $(document).ready(function(){
       $('.update_subscription').on('click',function(){
        let user_id=$(this).data('user_id');
        $('#user_id').val(user_id)
       })
    })
  </script>
@endpush