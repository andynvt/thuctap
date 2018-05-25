<?php

use Illuminate\Database\Seeder;

class CitiesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('cities')->insert([
            ['name' => 'Cần Thơ',],
            ['name' => 'An Giang',],
            ['name' => 'Hậu Giang',],
            ['name' => 'Vĩnh Long',],            
            ['name' => 'Đồng Tháp',],
            ['name' => 'Kiên Giang',],
            ['name' => 'TP HCM',],
            ['name' => 'Sóc Trăng',]
        ]);	
    }
}
