<?php

namespace Database\Seeders;

use App\Http\Helpers\UtilsHelper;
use App\Models\User;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Permission;
use Spatie\Permission\Models\Role;

class MenuPermission extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        UtilsHelper::insertPermissions();

        $permissions = UtilsHelper::getPermissions();
        $user = User::where('name', '=', 'admin')->first();

        foreach ($permissions as $key => $value) {
            $role_id = $user->roles[0]->id;
            $role = Role::find($role_id);

            $getDataPermission = $role->permissions()->get()->pluck('name')->toArray();
            $data = $getDataPermission;
            array_push($data, $value['name']);
            $role->syncPermissions($data);
        }
    }
}
