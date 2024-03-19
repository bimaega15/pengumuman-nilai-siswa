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
        Schema::create('siswa', function (Blueprint $table) {
            $table->increments('id');
            $table->string('nama_siswa');
            $table->string('nisn_siswa');
            $table->enum('jeniskelamin_siswa', ['L', 'P']);
            $table->string('notelpon_siswa')->nullable();
            $table->text('alamat_siswa')->nullable();
            $table->string('kontakdarurat_siswa')->nullable();
            $table->string('namaorangtua_siswa')->nullable();
            $table->string('email_siswa')->nullable();

            $table->integer('kelas_id')->unsigned();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('siswa');
    }
};
