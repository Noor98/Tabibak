<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class AdminaRequest extends FormRequest
{
    public function authorize()
    {
        return true;//مش شرط يكون عامل دخول على النظام
    }

    public function rules()
    {
        return [
            'name' => 'required|max:50',
            //'email' => 'required|max:50|email'
        ];
    }
}