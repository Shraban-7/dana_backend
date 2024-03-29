<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;

use App\Models\Company;
use App\Models\Analytics;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Http;
use Faker\Factory as Faker;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // \App\Models\User::factory(10)->create();

        // \App\Models\User::factory()->create([
        //     'company_name' => 'Test User',
        //     'email' => 'test@example.com',
        // ]);

        $faker = Faker::create();

        // Retrieve all companies
        $companies = Company::all();

        foreach ($companies as $company) {
            // Check if the company already has an associated analytics record
            $existingAnalytics = Analytics::where('company_id', $company->id)->exists();

            // If no analytics record exists for the company, create one
            if (!$existingAnalytics) {
                Analytics::create([
                    'offer_shares' => $faker->randomNumber(6),
                    'offer_price' => $faker->randomFloat(2, 10, 100),
                    'last_price' => $faker->randomFloat(2, 10, 100),
                    'bid_price' => $faker->randomFloat(2, 10, 100),
                    'bid_shares' => $faker->randomNumber(6),
                    'trade' => $faker->randomNumber(5),
                    'average' => $faker->randomFloat(2, 10, 100),
                    'money' => $faker->randomNumber(8),
                    'previous_close' => $faker->randomFloat(2, 10, 100),
                    'company_id' => $company->id,
                ]);
            }
        }

    }
}
