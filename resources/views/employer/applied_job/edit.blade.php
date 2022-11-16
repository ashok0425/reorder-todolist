@extends('employer.master')
@section('main-content')

@php
    define('PAGE','jobs')
@endphp

<x-title title="Edit Job"/>
<div class="card">
   
    <div class="card-body">
  
        <form action="{{route('employer.vacancy.update',$vacancy)}}" method="POST" enctype="multipart/form-data">
            @method('PATCH')
            @csrf
        <div class="row">
            <div class="col-md-6 mb-2" >  
                <div class="form-group">
                    <label for="">Position</label>
                    <input type="text" name="name" required value="{{$vacancy->name}}" class="form-control">
                </div>
            </div>


            <div class="col-md-6 mb-2" >  
                <div class="form-group">
                    <label for="">employer.</label>
                    <select name="employer." id="" class="form-select" required>
 <option value="">--select employer.--</option>
 @foreach ($employer.s as $item)
 <option value="{{$item->id}}"  {{$item->id==$vacancy->user_id?'selected':''}}>{{$item->name}}</option>
     
 @endforeach
                    </select>
                </div>
            </div>

            <div class="col-md-6 mb-2" >  
                <div class="form-group">
                    <label for="">Category</label>
                    <select name="category" id="" class="form-select" required>
 <option value="">--select category--</option>
 @foreach ($categories as $item)
 <option value="{{$item->id}}" {{$item->id==$vacancy->category_id?'selected':''}}>{{$item->category}}</option>
     
 @endforeach
                    </select>
                </div>
            </div>




            <div class="col-md-6 mb-2" >  
                <div class="form-group">
                    <label for="">Job Type</label>
                    <select name="job_type" id="" class="form-select" required>
 <option value="">--select job type--</option>
 @foreach ($job_types as $item)
 <option value="{{$item->id}}" {{$item->id==$vacancy->job_type_id?'selected':''}}>{{$item->name}}</option>
     
 @endforeach
                    </select>
                </div>
            </div>




            <div class="col-md-6 mb-2" >  
                <div class="form-group">
                    <label for="">Job Level</label>
                    <select name="job_level" id="" class="form-select" required>
 <option value="">--select job level--</option>
 @foreach ($job_levels as $item)
 <option value="{{$item->id}}" {{$item->id==$vacancy->job_level_id?'selected':''}}>{{$item->name}}</option>
     
 @endforeach
                    </select>
                </div>
            </div>



            
            <div class="col-md-6 mb-2" >  
                <div class="form-group">
                    <label for="">Education</label>
                    <select name="education" id="" class="form-select" required>
 <option value="">--select education--</option>
 @foreach ($educations as $item)
 <option value="{{$item->id}}" {{$item->id==$vacancy->education_id?'selected':''}}>{{$item->name}}</option>
     
 @endforeach
                    </select>
                </div>
            </div>




            
            <div class="col-md-6 mb-2" >  
                <div class="form-group">
                    <label for="">City</label>
                    <select name="city" id="" class="form-select" required>
 <option value="">--select city--</option>
 @foreach ($cities as $item)
 <option value="{{$item->id}}" {{$item->id==$vacancy->city_id?'selected':''}}>{{$item->name}}</option>
     
 @endforeach
                    </select>
                </div>
            </div>

            <div class="col-md-6 mb-2" >  

            <div class="form-group ">
                <label for="">Sub city</label>
                <select name="sub_city" id="" class="form-select" >
<option value="">--select city--</option>

                </select>
            </div>
        </div>

        <div class="col-md-6 mb-2" >  
            <div class="form-group">
                <label for="">Full address</label>
                <input type="text" name="address" required value="{{$vacancy->address}}" class="form-control">
            </div>
        </div>

            <div class="col-md-6 mb-2" >  
                <div class="form-group">
                    <label for="">Salary (0 will consider as negotiable)</label>
                    <input type="number" name="salary" required value="{{$vacancy->salary}}" class="form-control" value="0">
                </div>
            </div>

            <div class="col-md-6 mb-2" >  
                <div class="form-group">
                    <label for="">Salary Currency</label>
                    <input type="text" name="salary_unit"  value="{{$vacancy->salary_unit}}" class="form-control" required>
                </div>
            </div>


            <div class="col-md-6 mb-2" >  
                <div class="form-group">
                    <label for="">No of vacancy </label>
                    <input type="number" name="no_of_vacancy"  value="{{$vacancy->no_of_vacancy}}" class="form-control">
                </div>
            </div>


            <div class="col-md-6 mb-2" >  
                <div class="form-group">
                    <label for="">Deadline </label>
                   ( {{Carbon\Carbon::parse($vacancy->deadline)->format('m/d/Y')}} )
                    <input type="date" name="deadline"  value="{{Carbon\Carbon::parse($vacancy->deadline)->format('m/d/Y')}}" class="form-control">
                </div>
            </div>

            <div class="col-md-6 mb-2" >  
                <div class="form-group">
                    <label for="">Thumbnail</label>
                    <input type="file" name="thumbnail"   class="form-control">
                </div>
                <img src="{{asset($vacancy->thumbnail)}}" alt="thumbnail" width="100" class="img-fluid">
            </div>

            <div class="col-md-12 mb-2" >  
                <div class="form-group">
                    <label for="">Role & Responsibility</label>
                   <textarea name="role_responsibility" id="summernote3" class="form-control" >
                    {{$vacancy->role_responsibility}}
                   </textarea>
                </div>
            </div>



            <div class="col-md-12 mb-2" >  
                <div class="form-group">
                    <label for="">Specification</label>
                   <textarea name="specification" id="summernote1" class="form-control" rows="2">
                    {{$vacancy->specification}}

                   </textarea>
                </div>
            </div>


            <div class="col-md-12 mb-2" >  
                <div class="form-group">
                    <label for="">Description</label>
                   <textarea name="description" id="summernote2" class="form-control" rows="2">
                    {{$vacancy->description}}

                   </textarea>
                </div>
            </div>


        </div>
           <div class="d-flex justify-content-end">
            
            <button type="submit" class="btn btn-primary">update</button>
           </div>
        </form>
    </div>
</div>
@endsection
