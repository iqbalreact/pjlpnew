<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class PaymentLetterRequest extends FormRequest
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
            'skpd_id'               => 'required', 
            'employee_id'           => 'required',
            'functionary_id'        => 'required',
            'number'                => 'required',
            'date'                  => 'required',
            'body_letter'           => 'required',
            'source_of_funds'       => 'required'
        ];

    }
}
