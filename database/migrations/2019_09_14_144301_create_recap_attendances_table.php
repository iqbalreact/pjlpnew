<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateRecapAttendancesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('recap_attendances', function (Blueprint $table) {
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

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('recap_attendances');
    }
}
