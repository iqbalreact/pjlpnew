<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ContractRequest extends FormRequest
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
            'number'            => 'required|unique:contracts,number,'.$this->segment(3), 
            'employee_id'       => 'required|numeric',
            'work_package_id'   => 'required|numeric',
            'location_id'       => 'required|numeric',
            'position_id'       => 'required|numeric',
            'start_date'        => 'required|date',
            'end_date'          => 'required|date|after:start_date',
            'status'            => 'required',
            'occupation_id'     => 'required|numeric'
        ];
    }
}
