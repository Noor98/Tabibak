<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class DoctorprofileRequest extends FormRequest
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

    public function rules()
    {
        return [
            'Name' => 'required|max:50',
			'summary' => 'required|max:500',
			'specialized_at' => 'required',
			'Image' => 'required'
			
        ];
    }
}
