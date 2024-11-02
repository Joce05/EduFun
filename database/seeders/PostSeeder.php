<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\mspost as PostModel;
use Faker\Factory as Faker;
use App\Models\mscategory as CategoryModel;
use App\Models\Writer as WriterModel;

class PostSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        //
        $category = CategoryModel::all();
        $writer = WriterModel::all();
        $faker = faker::create('id_ID');
        for($i=0 ; $i < 10; $i++){
            PostModel::create([
            'title'=> $faker->sentence,
            'description'=>$faker->paragraph,
            'categoryId' => $category->random()->id,
            'userId' => $writer->random()->id,]);
        }
    }
}
