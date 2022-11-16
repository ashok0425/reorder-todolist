<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Leave extends Model
{
    use HasFactory;

    protected $fillable = [
        'author',
        'resolved_by',
        'vacation_start_date',
        'vacation_end_date',
        'request_created_at',
        'status',
    ];

    public function employe(){
        return $this->belongsTo(User::class,'author','id');
    }

    public function manager(){
        return $this->belongsTo(User::class,'resolved_by','id');
    }
}
