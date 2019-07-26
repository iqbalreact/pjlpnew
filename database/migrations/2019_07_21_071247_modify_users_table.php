<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class ModifyUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('users', function (Blueprint $table) {
            $table->bigInteger('nip')->nullable();
            $table->integer('skpd_id')->nullable();
            $table->integer('ppk_id')->nullable();
            $table->string('email')->nullable()->change();
            $table->string('status')->default('active');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('users', function (Blueprint $table) {
            $table->dropColumn('nip');
            $table->dropColumn('skpd_id');
            $table->dropColumn('ppk_id');
            $table->string('email')->required()->change();
            $table->dropColumn('status');
        });
    }
}
