<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\mscategory as CategoryModel;

class CategorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        //

        $categories = [
            ['category' => 'Interactive Multimedia'],
            ['category' => 'Software Engineering']
        ];

        foreach ($categories as $c) {
            CategoryModel::create($c);
        }
    }
}
