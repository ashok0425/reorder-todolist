@extends('employer.master')
@section('main-content')
@php
    define('PAGE','applied_job')
@endphp

<div class="container">
  
  <x-title title="All Applied Jobs" />


        

    <div class="card py-3 px-4">
     
        <div class="table-responsive">
        <table id="myTable" class="table table-responsive-sm" >
            <thead>
                <tr>
                    <th>#</th>
                    <th>Job</th>
                    <th>employer.</th>
                    <th>Candiate</th>
                    <th>Resume</th>
                    <th>Status</th>
                    <th>Action</th>
            
                </tr>
            </thead>
            <tbody>
                
                @foreach ($applied_jobs as $item)
                    <tr>
                        <td>{{$loop->iteration}}</td>
                        <td>{{$item->Vacancy->name}}</td>
                        <td>{{$item->employer->name}}</td>
                    
                        <td>{{$item->user->name}}</td>
                        <td>{{$item->user->name}}</td>

                        <td>
                        @if ($item->status==0)
                        <a  class="badge bg-danger">Pending</a>
                        @endif

                        @if ($item->status==1)

                        <a class="badge bg-info">View</a>
                        @endif

                
                    
                    </td>
                        <td>
                            <a href="{{route('employer.vacancy.edit',$item)}}" class="btn btn-primary"><i class="far fa-edit"></i></a>
                            {{-- <a id="delete" href="{{route('employer.delete',['id'=>$item->id,'table'=>'education'])}}" class="btn btn-danger"><i class="fas fa-times"></i></a> --}}
                            @if ($item->status==1)
                            <a href="{{route('employer.status.deactive',['id'=>$item->id,'table'=>'applied_jobs'])}}" class="btn btn-primary"><i class="fas fa-thumbs-down"></i></a>
                            @else
                            <a href="{{route('employer.status.active',['id'=>$item->id,'table'=>'applied_jobs'])}}" class="btn btn-primary"><i class="fas fa-thumbs-up"></i></a> 
                            @endif
                            <a href="{{route('employer.resume',['user_id'=>$item->user->id])}}" class="btn btn-primary"><i class="fas fa-print"></i></a>
                        </td>
                    </tr>
                @endforeach
            </tbody>
              </table>
    
            </div>
</div>
</div>




@endsection
