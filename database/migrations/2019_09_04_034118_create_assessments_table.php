<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateAssessmentsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('assessments', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->timestamps();
            $table->integer('month');
            $table->integer('year');
            $table->integer('employee_id');
            $table->integer('contract_id');
            $table->integer('work_package_id');
            $table->integer('work_completion_rate');
            $table->integer('work_completion_time');
            $table->integer('work_quality');
            $table->integer('obidence_on_obligation');
            $table->integer('obidence_on_rule');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('assessments');
    }
}
