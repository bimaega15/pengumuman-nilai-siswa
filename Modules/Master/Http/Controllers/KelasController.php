<?php

namespace Modules\Master\Http\Controllers;

use App\Models\Kelas;
use Illuminate\Contracts\Support\Renderable;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use DataTables;
use Illuminate\Support\Facades\Config;
use Modules\Master\Http\Requests\CreateKelasRequest;

class KelasController extends Controller
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
            $data = Kelas::query();
            return DataTables::eloquent($data)
                ->addColumn('action', function ($row) {
                    $buttonUpdate = '';
                    $buttonUpdate = '
                <a href="' . route('kelas.edit', $row->id) . '" class="btn btn-warning btn-edit btn-sm">
                    <i class="fa-solid fa-pencil"></i>
                </a>
                ';
                    $buttonDelete = '';
                    $buttonDelete = '
                <button type="button" class="btn-delete btn btn-danger btn-sm" data-url="' . secure_url('master/kelas/' . $row->id . '?_method=delete') . '">
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
                ->rawColumns(['action'])
                ->toJson();
        }
        return view('master::kelas.index');
    }

    /**
     * Show the form for creating a new resource.
     * @return Renderable
     */
    public function create()
    {
        $tingkatKelas = $this->dataStatis['tingkat_kelas'];
        return view('master::kelas.form', compact('tingkatKelas'));
    }

    /**
     * Store a newly created resource in storage.
     * @param Request $request
     * @return Renderable
     */
    public function store(CreateKelasRequest $request)
    {
        $insert = Kelas::create($request->all());
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
        $kelas = Kelas::find($id);
        $tingkatKelas = $this->dataStatis['tingkat_kelas'];
        return view('master::kelas.form', compact('kelas', 'tingkatKelas'));
    }

    /**
     * Update the specified resource in storage.
     * @param Request $request
     * @param int $id
     * @return Renderable
     */
    public function update(CreateKelasRequest $request, $id)
    {
        $data = $request->except(['_method']);
        Kelas::find($id)->update($data);
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
        Kelas::destroy($id);
        return response()->json('Berhasil hapus data', 200);
    }
}
