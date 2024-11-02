<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use App\Models\Writer as WriterModel;

class WriterSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        //
        $faker = faker::create('id_ID');
        for($i=0 ; $i < 10; $i++){
            WriterModel::create([
            'name'=> $faker->name,
            'specialist'=>$faker->jobTitle]);
        }
    }
}
