<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddColumnSpkToWorkInspectionTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('work_inspections', function (Blueprint $table) {
            $table->text('spk_number')->nullable();
            $table->date('spk_date')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('work_inspections', function (Blueprint $table) {
            $table->dropColumn('spk_number');
            $table->dropColumn('spk_date');
        });
    }
}
