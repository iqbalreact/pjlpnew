<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateLeaveEmployeesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('leave_employees', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->timestamps();
            $table->integer('employee_id');
            $table->integer('contract_id');
            $table->integer('remain_leave');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('leave_employees');
    }
}
