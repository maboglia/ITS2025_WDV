<?php

namespace Database\Seeders;

use App\Models\User;
// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use DB;
use Eloquent;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // User::factory(10)->create();

        // User::factory()->create([
        //     'name' => 'Test User',
        //     'email' => 'test@example.com',
        // ]);

        /*
        Model::unguard() does temporarily disable the mass assignment protection of the model, so you can seed all model properties.
        */
        Eloquent::unguard();

        $path = 'data/laravel_games.sql';
        DB::unprepared(file_get_contents($path));
        $this->command->info('Country table seeded!');


    }
}
