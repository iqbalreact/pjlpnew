<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class EmployeeRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'nik'       => 'required|numeric|unique:employees,nik,'.$this->segment(3),
            'name'      => 'required|max:255',
            'ktp'       => 'required|max:255|unique:employees,ktp,'.$this->segment(3),
            'avatar'    => 'image'
        ];
    }
}
