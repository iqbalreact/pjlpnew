<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class WorkDayRequest extends FormRequest
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
            'year'      => 'required|numeric|unique:work_days,year,'.$this->segment(3), 
            'january'   => 'required|numeric|min:1|max:31',
            'february'  => 'required|numeric|min:1|max:31',
            'march'     => 'required|numeric|min:1|max:31',
            'april'     => 'required|numeric|min:1|max:31',
            'may'       => 'required|numeric|min:1|max:31',
            'june'      => 'required|numeric|min:1|max:31',
            'july'      => 'required|numeric|min:1|max:31',
            'august'    => 'required|numeric|min:1|max:31',
            'september' => 'required|numeric|min:1|max:31',
            'october'   => 'required|numeric|min:1|max:31',
            'november'  => 'required|numeric|min:1|max:31',
            'december'  => 'required|numeric|min:1|max:31'
        ];
    }
}
