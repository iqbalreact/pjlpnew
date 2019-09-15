<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePayrollSalariesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('payroll_salaries', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->timestamps();
            $table->integer('payroll_id');
            $table->integer('salary_component_id');
            $table->string('salary_component_name');
            $table->bigInteger('nominal');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('payroll_salaries');
    }
}
