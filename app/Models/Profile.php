<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Profile extends Model
{
    use HasFactory;
    protected $table = 'profile';
    protected $guarded = [];
    public $timestamps = true;
    protected $casts = [
        'jeniskelamin_profile' => 'string', // pastikan di-cast ke string agar bisa diakses menggunakan accessor
    ];

    public function users()
    {
        return $this->belongsTo(User::class, 'users_id', 'id');
    }

    public function getJenisKelaminAttribute($value)
    {
        return $value === 'L' ? 'Laki-laki' : 'Perempuan';
    }

    public function scopeGetProfile()
    {
        $profiles = Profile::selectRaw('*, CASE WHEN jeniskelamin_profile = "L" THEN "Laki-laki" ELSE "Perempuan" END AS jeniskelamin_profile');
        return $profiles;
    }
}
