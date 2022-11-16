<?php
namespace App\Http\Controllers\Api;
use App\Http\Controllers\Controller;
use App\Models\Leave;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;


class LeaveController extends Controller
{

    public function __construct()
    {
        $this->middleware('IsEmploye');
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {

        // fetching all leaves
        $leaves=Leave::with('employe','manager')->orderBy('id','desc')->where('author',auth()->user()->id);

        // fetching  leaves on the basis of status i.e 0=pending,1=accepted,2=rejected
          
        if(isset($request->status)&&$request->status!='undefined'){
            $leaves=$leaves->where('status',$request->status);
        }
        $leaves=$leaves->get();
        return $this->success('Leaves data fetched',$leaves);

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
          // checking validator if fail
    $validate=Validator::make($request->all(),[
        'vacation_start_date'=>'required',
        'vacation_end_date'=>'required',
    ]);
    if ($validate->fails()) {
        $error=[];
       $messages=$validate->errors()->messages();
    foreach ($messages as $key => $value) {
        $error[]=$value[0];
    }
    return $this->error($error,'',400);
    }

   $request['author']=auth()->user()->id; 

   $leave=Leave::create($request->all());
  return $this->success('Leave request sent',$leave);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Leave  $leave
     * @return \Illuminate\Http\Response
     */
    public function show(Leave $leave)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Leave  $leave
     * @return \Illuminate\Http\Response
     */
    public function edit(Leave $leave)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Leave  $leave
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Leave $leave)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Leave  $leave
     * @return \Illuminate\Http\Response
     */
    public function destroy(Leave $leave)
    {
        //
    }
}
