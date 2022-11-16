<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateLeavesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('leaves', function (Blueprint $table) {
            $table->id();
            $table->foreignId('author')->constrained('users');
            $table->integer('status')->default(0);
            $table->integer('resolved_by')->nullable();
            $table->timestamp('request_created_at')->default(now());
            $table->timestamp('vacation_start_date')->nullable();
            $table->timestamp('vacation_end_date')->nullable();            
            $table->timestamp('total_leave')->default(1);            
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('leaves');
    }
}
