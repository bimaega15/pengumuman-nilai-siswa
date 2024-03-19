<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Siswa extends Model
{
    use HasFactory;
    protected $table = 'siswa';
    protected $guarded = [];
    public $timestamps = true;

    public function kelas()
    {
        return $this->belongsTo(Kelas::class);
    }
    public function nilaiSiswa()
    {
        return $this->hasMany(NilaiSiswa::class);
    }

    public function scopeGetSiswa()
    {
        $siswa = Siswa::selectRaw('*, CASE WHEN jeniskelamin_siswa = "L" THEN "Laki-laki" ELSE "Perempuan" END AS jeniskelamin_siswa')
            ->with(['kelas', 'nilaiSiswa' => function ($query) {
                $query->orderBy('id', 'desc');
            }]);
        return $siswa;
    }
}
