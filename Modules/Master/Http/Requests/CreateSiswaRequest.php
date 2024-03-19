<?php

namespace Modules\Master\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class CreateSiswaRequest extends FormRequest
{
    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'nama_siswa' => 'required',
            'nisn_siswa' => 'required',
            'kelas_id' => 'required',
        ];
    }


    public function messages()
    {
        return [
            'nama_siswa.required' => 'Nama Siswa wajib diisi',
            'nisn_siswa.required' => 'NISN wajib diisi',
            'kelas_id.required' => 'Kelas wajib diisi',
        ];
    }

    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }
}
