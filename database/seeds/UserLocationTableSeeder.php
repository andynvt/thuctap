<?php

use Illuminate\Database\Seeder;

class UserLocationTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('user_location')->insert([
            [
                'x' => '260',
                'y' => '315',
                'created_at' => '2018-05-21',
                'updated_at' => '2018-05-24'
            ],
            [
                'x' => '270',
                'y' => '515',
                'created_at' => '2018-05-21',
                'updated_at' => '2018-05-24'
            ],
            [
                'x' => '760',
                'y' => '515',
                'created_at' => '2018-05-21',
                'updated_at' => '2018-05-24'
            ],
            [
                'x' => '760',
                'y' => '356',
                'created_at' => '2018-05-21',
                'updated_at' => '2018-05-24'
            ],            
            [
                'x' => '230',
                'y' => '545',
                'created_at' => '2018-05-21',
                'updated_at' => '2018-05-24'
            ],
            [
                'x' => '160',
                'y' => '515',
                'created_at' => '2018-05-21',
                'updated_at' => '2018-05-24'
            ]
        ]);
    }
}
