<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class AccountRequest extends FormRequest
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
            'nip'       => 'required|numeric|unique:users,nip,'.$this->segment(3),
            'name'      => 'required|max:255',
            'email'     => 'email|unique:users,email,'.$this->segment(3),
            'skpd_id'   => 'required',
            'avatar'    => 'image'
        ];
    }
}
