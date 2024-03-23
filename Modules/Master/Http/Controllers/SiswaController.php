<?php

namespace Modules\Master\Http\Controllers;

use App\Models\Kelas;
use App\Models\NilaiSiswa;
use App\Models\Siswa;
use Illuminate\Contracts\Support\Renderable;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use DataTables;
use Exception;
use Illuminate\Support\Facades\Config;
use Modules\Master\Http\Requests\CreateSiswaImportRequest;
use Modules\Master\Http\Requests\CreateSiswaRequest;

use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;
use PhpOffice\PhpSpreadsheet\Reader\Xlsx as Xlsximport;

class SiswaController extends Controller
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
            $data = Siswa::getSiswa();
            return DataTables::eloquent($data)
                ->addColumn('action', function ($row) {
                    $buttonUpdate = '';
                    $buttonUpdate = '
                <a href="' . route('siswa.edit', $row->id) . '" class="btn btn-warning btn-edit btn-sm">
                    <i class="fa-solid fa-pencil"></i>
                </a>
                ';
                    $buttonDelete = '';
                    $buttonDelete = '
                <button type="button" class="btn-delete btn btn-danger btn-sm" data-url="' . url('master/siswa/' . $row->id . '?_method=delete') . '">
                    <i class="fa-solid fa-trash"></i>
                </button>
                ';

                    $buttonNilai = '';
                    $buttonNilai = '<a href="' . url('master/nilaiSiswa?siswa_id=' . $row->id) . '" class="btn btn-primary btn-sm" title="Nilai Siswa">
                <i class="fa-solid fa-pen-to-square"></i>
            </a>';

                    $button = '
            <div class="text-center">
                ' . $buttonUpdate . '
                ' . $buttonDelete . '
                ' . $buttonNilai . '
            </div>
            ';

                    return $button;
                })
                ->addColumn('kelas', function ($row) {
                    $data = 'Nama Kelas: ' . $row->kelas->nama_kelas . '<br />
                    Tingkat kelas: ' . $row->kelas->tingkat_kelas . '
                    ';
                    return $data;
                })
                ->addColumn('delete_all', function ($row) {
                    $data = '
                    <div class="form-check mt-2">
                        <input id="checkbox_item' . $row->id . '" class="form-check-input checkbox_item" type="checkbox" value="' . $row->id . '" style="border: 1px solid black;">
                        <label class="form-check-label" for="checkbox_item' . $row->id . '"></label>
                    </div>
                    ';
                    return $data;
                })
                ->rawColumns(['action', 'kelas', 'delete_all'])
                ->toJson();
        }
        return view('master::siswa.index');
    }

    /**
     * Show the form for creating a new resource.
     * @return Renderable
     */
    public function create()
    {
        $kelas = Kelas::all();
        $array_kelas = [];
        foreach ($kelas as $key => $item) {
            $array_kelas[] = [
                'id' => $item->id,
                'label' => '
                <strong>Kelas: ' . $item->nama_kelas . ' (' . $item->wali_kelas . ')</strong> <br />
                <span>Tingkat: ' . $item->tingkat_kelas . '</span>
                '

            ];
        }
        return view('master::siswa.form', compact('array_kelas'));
    }

    /**
     * Store a newly created resource in storage.
     * @param Request $request
     * @return Renderable
     */
    public function store(CreateSiswaRequest $request)
    {
        $insert = Siswa::create($request->all());
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
        $siswa = Siswa::find($id);
        $kelas = Kelas::all();
        $array_kelas = [];
        foreach ($kelas as $key => $item) {
            $array_kelas[] = [
                'id' => $item->id,
                'label' => '
                <strong>Kelas: ' . $item->nama_kelas . ' (' . $item->wali_kelas . ')</strong> <br />
                <span>Tingkat: ' . $item->tingkat_kelas . '</span>
                '

            ];
        }
        return view('master::siswa.form', compact('siswa', 'array_kelas'));
    }

    /**
     * Update the specified resource in storage.
     * @param Request $request
     * @param int $id
     * @return Renderable
     */
    public function update(CreateSiswaRequest $request, $id)
    {
        $data = $request->except(['_method']);
        Siswa::find($id)->update($data);
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
        Siswa::destroy($id);
        return response()->json('Berhasil hapus data', 200);
    }

    public function deleteAll(Request $request)
    {
        $siswa_id = json_decode($request->input('siswa_id'));
        Siswa::destroy($siswa_id);
        return response()->json('Berhasil hapus data ' . count($siswa_id), 200);
    }

    public function import(CreateSiswaImportRequest $request)
    {
        try {
            $file = $request->file('import');
            $extension = $file->getClientOriginalExtension();

            if ($extension == 'csv') {
                $reader = new \PhpOffice\PhpSpreadsheet\Reader\Csv();
            } else {
                $reader = new Xlsximport;
            }

            $tmpName = $file->getPathname();
            $spreadsheet = $reader->load($tmpName);
            $sheetData = $spreadsheet->getActiveSheet()->toArray();

            $countData = [];
            for ($i = 1; $i < count($sheetData); $i++) {
                if ($sheetData[$i][1] != null) {
                    // kelas
                    $nisn_siswa = ($sheetData[$i][1]);
                    $nama_siswa = strtolower($sheetData[$i][2]);
                    $nama_siswa_original = $sheetData[$i][2];
                    $jeniskelamin_siswa = strtolower($sheetData[$i][3]);
                    $alamat_siswa = strtolower($sheetData[$i][4]);
                    $namaorangtua_siswa = strtolower($sheetData[$i][5]);
                    $nama_kelas = strtolower($sheetData[$i][6]);
                    $nilai_nsiswa = $sheetData[$i][7];

                    $getKelas = Kelas::whereRaw('LOWER(nama_kelas) = ?', [strtolower($nama_kelas)])->get()->count();
                    $kelas_id = '';
                    $siswa_id = '';

                    if ($getKelas > 0) {
                        $getKelas = Kelas::whereRaw('LOWER(nama_kelas) = ?', [strtolower($nama_kelas)])->first();
                        $kelas_id = $getKelas->id;
                    } else {
                        $nama_kelas = strtoupper($nama_kelas);
                        $insertKelas = Kelas::create([
                            'nama_kelas' => $nama_kelas
                        ]);
                        $kelas_id = $insertKelas->id;
                    }

                    $checkJk = preg_match('/l/i', $jeniskelamin_siswa);
                    $jeniskelamin_siswa = $checkJk == 1 ? 'L' : 'P';

                    // siswa
                    $getSiswa = Siswa::whereRaw('LOWER(nisn_siswa) = ?', [strtolower($nisn_siswa)])->get()->count();
                    if ($getSiswa > 0) {
                        $getSiswa = Siswa::whereRaw('LOWER(nisn_siswa) = ?', [strtolower($nisn_siswa)])->first();
                        $siswa_id = $getSiswa->id;
                    } else {
                        $insertSiswa = Siswa::create([
                            'nama_siswa' => $nama_siswa_original,
                            'nisn_siswa' => $nisn_siswa,
                            'jeniskelamin_siswa' => $jeniskelamin_siswa,
                            'alamat_siswa' => $alamat_siswa,
                            'namaorangtua_siswa' => $namaorangtua_siswa,
                            'kelas_id' => $kelas_id,
                        ]);
                        $siswa_id = $insertSiswa->id;
                    }

                    // nilai siswa
                    $countData[] = [
                        'siswa_id' => $siswa_id,
                        'nilai_nsiswa' => $nilai_nsiswa,
                        'status_nsiswa' => true,
                    ];
                }
            }

            NilaiSiswa::insert($countData);
            if (count($countData) > 0) {
                return response()->json("Berhasil import data sebanyak " . count($countData), 200);
            } else {
                return response()->json([
                    'statusText' => 400,
                    'message' => "Gagal insert data",
                ], 400);
            }
        } catch (Exception $e) {
            return response()->json([
                'statusText' => 400,
                'message' => $e->getMessage(),
            ], 400);
        }
    }
}
