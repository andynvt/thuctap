<?php

use Illuminate\Database\Seeder;

class DistrictsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('cities')->insert([
            ['id_city' => '3',
             'name' => 'Thành phố Long Xuyên'
            ]

        ]);
    }
}
