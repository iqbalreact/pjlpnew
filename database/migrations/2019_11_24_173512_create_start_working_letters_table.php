<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateStartWorkingLettersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('start_working_letters', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->timestamps();
            $table->integer('skpd_id');
            $table->integer('employee_id');
            $table->integer('functionary_id');
            $table->integer('contract_id');
            $table->text('number');
            $table->date('date');
            $table->text('section_1')->nullable();
            $table->text('work_type')->nullable();
            $table->text('term')->nullable();
            $table->text('period')->nullable();
            $table->text('fine')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('start_working_letters');
    }
}
