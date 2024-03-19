<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class NilaiSiswa extends Model
{
    use HasFactory;
    protected $table = 'nilai_siswa';
    protected $guarded = [];
    public $timestamps = true;

    public function siswa()
    {
        return $this->belongsTo(Siswa::class);
    }

    public function scopeGetNilaiSiswa()
    {
        $data = NilaiSiswa::with('siswa')->where('siswa_id', request()->query('siswa_id'));
        return $data;
    }
}
