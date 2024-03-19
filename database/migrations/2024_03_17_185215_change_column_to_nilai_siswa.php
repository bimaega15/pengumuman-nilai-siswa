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
            $table->renameColumn('judulpenilaian_nsiswa', 'judul_nsiswa');
            $table->renameColumn('deskripsipenilaian_nsiswa', 'deskripsi_nsiswa');
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
        });
    }
};
