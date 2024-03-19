<?php

namespace Modules\Master\Http\Controllers;

use App\Models\Kelas;
use App\Models\NilaiSiswa;
use App\Models\Siswa;
use Illuminate\Contracts\Support\Renderable;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use DataTables;
use Illuminate\Support\Facades\Config;
use Modules\Master\Http\Requests\CreateNilaiSiswaRequest;

class NilaiSiswaController extends Controller
{
    /**
     * Display a listing of the resource.
     * @return Renderable
     */
    public $dataStatis;
    public function __construct()
    {
        $this->dataStatis = Config::get('datastatis');
    }
    public function index(Request $request)
    {
        if ($request->ajax()) {
            $data = NilaiSiswa::getNilaiSiswa();
            return DataTables::eloquent($data)
                ->addColumn('action', function ($row) {
                    $buttonUpdate = '';
                    $buttonUpdate = '
                <a href="' . url('master/nilaiSiswa/' . $row->id . '/edit?siswa_id=' . $row->siswa_id) . '" class="btn btn-warning btn-edit btn-sm">
                    <i class="fa-solid fa-pencil"></i>
                </a>
                ';
                    $buttonDelete = '';
                    $buttonDelete = '
                <button type="button" class="btn-delete btn btn-danger btn-sm" data-url="' . url('master/nilaiSiswa/' . $row->id . '?_method=delete') . '">
                    <i class="fa-solid fa-trash"></i>
                </button>
                ';

                    $button = '
            <div class="text-center">
                ' . $buttonUpdate . '
                ' . $buttonDelete . '
            </div>
            ';

                    return $button;
                })
                ->addColumn('status_nsiswa', function ($row) {
                    $output = $row->status_nsiswa ? '<i class="fa-solid fa-check"></i>' : '<i class="fa-solid fa-circle-xmark"></i>';
                    return '<div class="text-center">
                    ' . $output . '
                    </div>';
                })
                ->addColumn('nilai_nsiswa', function ($row) {
                    $output = '<strong>
                    <a style="color: #428bca;" href="' . $row->nilai_nsiswa . '">' . $row->nilai_nsiswa . '</a>
                    </strong>';
                    return $output;
                })
                ->rawColumns(['action', 'status_nsiswa', 'nilai_nsiswa'])
                ->toJson();
        }
        $siswa_id = request()->query('siswa_id');
        $siswa = Siswa::find($siswa_id);
        return view('master::nilaiSiswa.index', compact('siswa'));
    }

    /**
     * Show the form for creating a new resource.
     * @return Renderable
     */
    public function create()
    {
        $siswa_id = request()->query('siswa_id');
        return view('master::nilaiSiswa.form', compact('siswa_id'));
    }

    /**
     * Store a newly created resource in storage.
     * @param Request $request
     * @return Renderable
     */
    public function store(CreateNilaiSiswaRequest $request)
    {
        $insert = NilaiSiswa::create($request->all());
        return response()->json('Berhasil menambahkan data', 201);
    }

    /**
     * Show the specified resource.
     * @param int $id
     * @return Renderable
     */
    public function show($id)
    {
        return view('master::show');
    }

    /**
     * Show the form for editing the specified resource.
     * @param int $id
     * @return Renderable
     */
    public function edit($id)
    {
        $nilaiSiswa = NilaiSiswa::find($id);
        $siswa_id = request()->query('siswa_id');
        return view('master::nilaiSiswa.form', compact('nilaiSiswa', 'siswa_id'));
    }

    /**
     * Update the specified resource in storage.
     * @param Request $request
     * @param int $id
     * @return Renderable
     */
    public function update(CreateNilaiSiswaRequest $request, $id)
    {
        $data = $request->except(['_method']);
        NilaiSiswa::find($id)->update($data);
        return response()->json('Berhasil update data', 200);
    }

    /**
     * Remove the specified resource from storage.
     * @param int $id
     * @return Renderable
     */
    public function destroy($id)
    {
        //
        NilaiSiswa::destroy($id);
        return response()->json('Berhasil hapus data', 200);
    }
}
