<?php

namespace Modules\Master\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class CreateSiswaImportRequest extends FormRequest
{
    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'import' => 'required|file|mimes:xlsx,xls',
        ];
    }


    public function messages()
    {
        return [
            'import.required' => 'File wajib diisi',
            'import.file' => 'Wajib berupa file',
            'import.required' => 'File wajib diisi',
            'import.required' => 'File harus berupa file Excel (xlsx atau xls)',
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
