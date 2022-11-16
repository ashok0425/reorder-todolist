<?php
namespace App\Http\Controllers\Api;
use App\Http\Controllers\Controller;
use App\Models\Leave;
use Carbon\Carbon;
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

    public function remainLeave(Request $request)
{
    $leave=Leave::where('author',auth()->user()->id)->sum('total_leave');
    $data=[
        'leave_left'=>30-$leave,
        'leave_taken'=>$leave
    ];
    return $this->success('Leaves data fetched',$data);
    

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

    try {
  
   $request['author']=auth()->user()->id; 
//    fetching number of days 
$toDate = Carbon::parse($request->vacation_end_date);
$fromDate = Carbon::parse($request->vacation_start_date);
$days = $toDate->diffInDays($fromDate);

// total day laeval
$leave_day=Leave::where('author',auth()->user()->id)->sum('total_leave');

if($leave_day>=30){
    return $this->error('You reached your maximum leave day','',400);

}
 $request['total_leave']=$days;
   $leave=Leave::create($request->all());
  return $this->success('Leave request sent',$leave);

        //code...
    } catch (\Throwable $th) {
        return $this->error('Something went wrong.Try again later','',400);

    }
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
