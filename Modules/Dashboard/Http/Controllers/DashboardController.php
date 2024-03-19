<?php

namespace Modules\Dashboard\Http\Controllers;

use App\Models\Kelas;
use App\Models\Siswa;
use App\Models\User;
use Illuminate\Contracts\Support\Renderable;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use Spatie\Permission\Models\Role;
use DataTables;

class DashboardController extends Controller
{
    /**
     * Display a listing of the resource.
     * @return Renderable
     */
    public function index(Request $request)
    {
        if ($request->ajax()) {
            $data = Siswa::getSiswa();
            return DataTables::eloquent($data)
                ->addColumn('action', function ($row) {
                    $buttonNilai = '
                    <a href="' . secure_url('master/nilaiSiswa?siswa_id=' . $row->id) . '" class="btn btn-primary btn-sm" title="Nilai Siswa">
                    <i class="fa-solid fa-pen-to-square"></i>
                </a>
                    ';
                    return '<div class="text-center">
                    ' . $buttonNilai . '
                    </div>';
                })
                ->addColumn('kelas', function ($row) {
                    $data = 'Nama Kelas: ' . $row->kelas->nama_kelas . '<br />
                    Tingkat kelas: ' . $row->kelas->tingkat_kelas . '
                    ';
                    return $data;
                })
                ->rawColumns(['action', 'kelas'])
                ->toJson();
        }
        $kelas = Kelas::all()->count();
        $siswa = Siswa::all()->count();
        $user = User::all()->count();
        $role = Role::all()->count();

        return view('dashboard::index', compact('kelas', 'siswa', 'user', 'role'));
    }
}
