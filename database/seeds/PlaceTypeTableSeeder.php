<?php

use Illuminate\Database\Seeder;

class PlaceTypeTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('place_type')->insert([
            [
            	'name' => 'Địa điểm du lịch',
            	'description' => 'Các địa danh tham quan du lịch'
        	],
        	[
            	'name' => 'Ăn uống',
            	'description' => 'Các địa điểm ăn uống hấp dẫn'
        	],
        	[
            	'name' => 'Khách sạn',
            	'description' => 'Các địa điểm nghỉ ngơi thoải mái'
        	]            
        ]);
    }
}
