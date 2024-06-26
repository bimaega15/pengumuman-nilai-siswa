<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('nilai_siswa', function (Blueprint $table) {
            //
            $table->text('nilai_nsiswa')->change();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('nilai_siswa', function (Blueprint $table) {
            //
            $table->text('nilai_nsiswa')->change();
        });
    }
};
