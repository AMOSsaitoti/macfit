<?php

namespace Database\Seeders;

use App\Models\User;
use App\Models\Role;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Support\Facades\Hash;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    use WithoutModelEvents;

    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        Role::create([
            'name' => 'Admin',
        ]);

        Role::create([
            'name' => 'User',
        ]);

        User::create([
            'name' => 'Admin',
            'email' => 'admin@onlineshop.com',
            'phone' => '0722345678',
            'deliveryAddress' => 'N/A',
            'password' => Hash::make('Qwerty1234'),
            'role_id'=> 1,
        ]);

         User::create([
            'name' => 'Joel',
            'email' => 'joelwendwa@gmail.com',
            'phone' => '0722435768',
            'deliveryAddress' => 'N/A',
            'password' => Hash::make('Qwerty1234'),
            'role_id'=> 2,
        ]);

        // User::factory(10)->create();

        
    }
}
