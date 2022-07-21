<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;


class employeesFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'companies_id'  => rand(10, 19),
            'firstname'     => $this->faker->firstName(),
            'lastname'      => $this->faker->lastName(),
            'email'         => $this->faker->email(),
            'phone'         => $this->faker->e164PhoneNumber(),
        ];
    }
}
