<?php

namespace App\Http\Controllers;

use App\Models\Siswa;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;

class HomeController extends Controller
{
    public function index(Request $request)
    {
        if ($request->ajax()) {
            $nisn_siswa = $request->query('nisn_siswa');
            $getSiswa = Siswa::getSiswa()->where('nisn_siswa', $nisn_siswa)->first();
            return view('one.home.modal', compact('getSiswa'));
        }
        return view('one.home.index');
    }
}
