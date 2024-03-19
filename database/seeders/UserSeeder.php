<?php

namespace Database\Seeders;

use App\Models\Profile;
use App\Models\User;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;
use Spatie\Permission\Models\Role;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        Role::create([
            'name' => 'Admin',
            'guard_name' => 'web',
        ]);

        $user = User::create([
            'name' => 'admin',
            'email' => 'admin@gmail.com',
            'password' => Hash::make('password'),
        ]);
        $user->assignRole('Admin');

        $profile = Profile::create([
            'users_id' => $user->id,
            'nik_profile' => '12382993',
            'nama_profile' => 'Admin Profile',
            'email_profile' => 'adminprofile@gmail.com',
            'alamat_profile' => 'alamat admin profile',
            'nohp_profile' => '082388392821',
            'jeniskelamin_profile' => 'L',
            'gambar_profile' => 'default.png',
        ]);
    }
}
