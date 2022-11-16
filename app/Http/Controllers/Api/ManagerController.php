<?php
namespace App\Http\Controllers\Api;
use App\Http\Controllers\Controller;
use App\Models\Leave;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;


class ManagerController extends Controller
{

    public function __construct()
    {
        $this->middleware('IsManager');
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {

        // fetching all leaves
        $leaves=Leave::with('employe','manager')->orderBy('id','desc');

        // fetching  leaves on the basis of status i.e 0=pending,1=accepted,2=rejected
          
        if(isset($request->status)&&$request->status!='undefined'){
            $leaves=$leaves->where('status',$request->status);
        }
        $leaves=$leaves->get();
        return $this->success('Leaves data fetched',$leaves);

    }

   
    public function update(Request $request)
    {
        $leave=Leave::find($request->leave_id);
        $leave->resolved_by=auth()->user()->id;
        $leave->status=$request->status;
        $leave->save();
        return $this->success('Leaves updated',$leave);

    }

}
