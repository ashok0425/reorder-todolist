@extends('employer.master')
@section('main-content')
@php
    define('PAGE','employeer')
@endphp

<div class="container">
  
<x-title title="All User List"/>

        

    <div class="card py-3 px-4">
     
        <div class="table-responsive">
        <table id="myTable" class="table table-responsive-sm" >
            <thead>
                <tr>
                    <th>#</th>
                    <th>Thumbnail</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Phone</th>
                    <th>Status</th>
                    <th>Action</th>
            
                </tr>
            </thead>
            <tbody>
                
                @foreach ($employers as $item)
                    <tr>
                        <td>{{$loop->iteration}}</td>
                        <td><img src="{{asset($item->logo)}}" alt="" width="70"></td>
                        <td>{{$item->name}}</td>
                        <td>{{$item->email}}</td>
                        <td>{{$item->phone}}</td>
                        <td>
                        @if ($item->status==1)
                        <a  class="badge bg-success">Activated</a>
                        @else
                        <a class="badge bg-danger">Blocked</a>

                    @endif
                
                    
                    </td>
                        <td>
                            <a href="{{route('employer.user.edit',$item)}}" class="btn btn-primary"><i class="far fa-edit"></i></a>
                            {{-- <a id="delete" href="{{route('employer.delete',['id'=>$item->id,'table'=>'education'])}}" class="btn btn-danger"><i class="fas fa-times"></i></a> --}}
                            @if ($item->status==1)
                            <a href="{{route('employer.status.deactive',['id'=>$item->id,'table'=>'users'])}}" class="btn btn-primary"><i class="fas fa-thumbs-down"></i></a>
                            @else
                            <a href="{{route('employer.status.active',['id'=>$item->id,'table'=>'users'])}}" class="btn btn-primary"><i class="fas fa-thumbs-up"></i></a> 
                            @endif
                            
                            <button  class="btn btn-info update_subscription" data-toggle="modal" data-user_id="{{$item->id}}" data-target="#exampleModal"><i class="fas fa-upload"></i></button>
                        </td>
                    </tr>
                @endforeach
            </tbody>
              </table>
    
            </div>
</div>
</div>



<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <form action="{{route('employer.update.subscription')}}" method="POST">
            @csrf
            <input type="hidden" name="user_id" id="user_id">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Update Subscription</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>

        <div class="modal-body">
         @php
             $packages=DB::table('packages')->get();
         @endphp
         <label for="">Select Package</label>
         <select name="package" id="" class="form-control">
            @foreach ($packages as $item)
            <option value="{{$item->id}}">
                {{$item->name}}
                </option>
            @endforeach

         </select>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          <button  class="btn btn-primary">Save</button>
        </div>
      </div>
    </form>
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