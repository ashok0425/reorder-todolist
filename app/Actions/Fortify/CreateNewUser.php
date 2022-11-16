<?php

namespace App\Actions\Fortify;

use App\Models\User;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Laravel\Fortify\Contracts\CreatesNewUsers;
use Laravel\Jetstream\Jetstream;

class CreateNewUser implements CreatesNewUsers
{
    use PasswordValidationRules;

    /**
     * Validate and create a newly registered user.
     *
     * @param  array  $input
     * @return \App\Models\User
     */
    public function create(array $input)
    {
        Validator::make($input, [
            'name' => ['required', 'string', 'max:255'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
            'password' => $this->passwordRules(),
            'terms' => Jetstream::hasTermsAndPrivacyPolicyFeature() ? ['required', 'accepted'] : '',
        ])->validate();

      session()->flash('register');
      if (isset($input['Isemployer'])) {
        return User::create([
            'name' => $input['name'],
            'pan_no' => $input['pan_no'],
            'address' => $input['address'],
            'telephone' => $input['telephone']?$input['telephone']:'',
            'phone' => $input['phone'],
            'email' => $input['email'],
            'Isemployeer' => $input['Isemployer']?$input['Isemployer']:'',
            'password' => Hash::make($input['password']),
        ]);
      }
        return User::create([
            'name' => $input['name'],
            'phone' => $input['phone'],
            'email' => $input['email'],
            'password' => Hash::make($input['password']),
        ]);
    }
} 
