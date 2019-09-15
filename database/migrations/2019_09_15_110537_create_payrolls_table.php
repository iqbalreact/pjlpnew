<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePayrollsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('payrolls', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->timestamps();
            $table->integer('month');
            $table->integer('year');
            $table->integer('employee_id');
            $table->integer('contract_id');
            $table->integer('work_package_id');
            $table->integer('attend')->default(0);
            $table->integer('sick')->default(0);
            $table->integer('leave')->default(0);
            $table->integer('not_present')->default(0);
            $table->bigInteger('gross_salary')->default(0);
            $table->bigInteger('deduction_attendance');
            $table->bigInteger('deduction_bpjs_healthcare');
            $table->bigInteger('deduction_bpjs_social_security');
            $table->bigInteger('net_salary')->default(0);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('payrolls');
    }
}
