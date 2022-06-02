<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Facades\Hash;

class AdminFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'name' => $this->faker->firstName() ." ". $this->faker->lastName(),
            'email' => $this->faker->email(),
            'phone_number' => $this->faker->phoneNumber(),
            'password' => Hash::make('cong'),
            'address' => $this->faker->address(),
            'company' => $this->faker->company(),
            'level' => $this->faker->numberBetween(0,2),
        ];
    }
}
