<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class OccupationRequest extends FormRequest
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
            'functionary_id'    => 'required|numeric',
            'skpd_id'           => 'required|numeric',
            'start_date'        => 'required|date',
            'end_date'          => 'required|date|after:start_date',
            'position'          => 'required',
            'status'            => 'required'
        ];
    }
}
