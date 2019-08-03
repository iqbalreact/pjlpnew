<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateContractsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('contracts', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->timestamps();
            $table->string('number');
            $table->integer('employee_id');
            $table->integer('skpd_id');
            $table->integer('program_id');
            $table->integer('activity_id');
            $table->integer('work_package_id');
            $table->integer('location_id');
            $table->integer('position_id');
            $table->bigInteger('salary');
            $table->date('start_date');
            $table->date('end_date');
            $table->string('status');
            $table->integer('occupation_id');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('contracts');
    }
}
