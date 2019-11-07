<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateHistoryLeaveEmployeesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('history_leave_employees', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->timestamps();
            $table->date('start_date');
            $table->date('end_date');
            $table->integer('contract_id');
            $table->integer('employee_id');
            $table->integer('total_day');
            $table->integer('leave_type')->default(0);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('history_leave_employees');
    }
}
