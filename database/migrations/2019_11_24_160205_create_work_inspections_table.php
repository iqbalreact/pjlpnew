<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateWorkInspectionsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('work_inspections', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->timestamps();
            $table->integer('skpd_id');
            $table->integer('employee_id');
            $table->integer('functionary_id');
            $table->integer('functionary_pptk_id');
            $table->integer('functionary_pptk2_id');
            $table->text('number');
            $table->text('section_1')->nullable();
            $table->text('section_2')->nullable();
            $table->text('section_3')->nullable();
            $table->integer('contract_id');
            $table->date('date')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('work_inspections');
    }
}
