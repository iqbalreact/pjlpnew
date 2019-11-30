<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateWorkHandoverPpkomsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('work_handover_ppkoms', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->timestamps();
            $table->integer('skpd_id');
            $table->integer('functionary_id');
            $table->integer('functionary2_id');
            $table->text('number');
            $table->date('date')->nullable();
            $table->text('section_2')->nullable();
            $table->text('section_3')->nullable();
            $table->text('section_4')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('work_handover_ppkoms');
    }
}
