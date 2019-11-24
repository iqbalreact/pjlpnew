<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePaymentLettersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('payment_letters', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->timestamps();
            $table->integer('skpd_id');
            $table->integer('employee_id');
            $table->integer('functionary_id');
            $table->text('number');
            $table->text('section_1')->nullable();
            $table->text('body_letter')->nullable();
            $table->integer('contract_id');
            $table->text('source_of_funds')->nullable();
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
        Schema::dropIfExists('payment_letters');
    }
}
