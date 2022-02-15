<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Validation\ValidationException;
use Illuminate\Validation\Rules\Password;


class AuthSignupController extends Controller
{
    public function signup(Request $request)
    {


        try {
            $request->validate([
                'email' => 'required|email',
                'password' => ['required', Password::min(8), Password::min(8)->letters(), Password::min(8)->numbers(), Password::min(8)->symbols(),Password::min(8)->uncompromised()],
            ]);
        } catch (ValidationException $th) {
            return response()->json([
                'message' => 'Validation failed',
                'errors' => $th->errors(),
            ], 422);
        }

        //validate body
         try {
            $request->validate([
                'email' => 'unique:users'
            ]);
        } catch (ValidationException $th) {
            return response()->json([
                'message' => 'Validation failed',
                'errors' => $th->errors(),
            ], 409);
        }
    }
}
