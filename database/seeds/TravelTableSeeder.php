<?php

use Illuminate\Database\Seeder;

class TravelTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('travel')->insert([
            [
            	'id_place' => '1',
            	'created_at' => '2018-05-21',
            	'updated_at' => '2018-05-24'
        	],
        	[
            	'id_place' => '2',
            	'created_at' => '2018-05-21',
            	'updated_at' => '2018-05-24'
        	],
        	[
            	'id_place' => '3',
            	'created_at' => '2018-05-21',
            	'updated_at' => '2018-05-24'
        	],
        	[
            	'id_place' => '4',
            	'created_at' => '2018-05-21',
            	'updated_at' => '2018-05-24'
        	],
        	[
            	'id_place' => '5',
            	'created_at' => '2018-05-21',
            	'updated_at' => '2018-05-24'
        	],
        	[
            	'id_place' => '1',
            	'created_at' => '2018-05-21',
            	'updated_at' => '2018-05-24'
        	],
        	[
            	'id_place' => '1',
            	'created_at' => '2018-05-21',
            	'updated_at' => '2018-05-24'
        	],
        	[
            	'id_place' => '4',
            	'created_at' => '2018-05-21',
            	'updated_at' => '2018-05-24'
        	],
        	[
            	'id_place' => '5',
            	'created_at' => '2018-05-21',
            	'updated_at' => '2018-05-24'
        	],
        	[
            	'id_place' => '10',
            	'created_at' => '2018-05-21',
            	'updated_at' => '2018-05-24'
        	],
        	[
            	'id_place' => '11',
            	'created_at' => '2018-05-21',
            	'updated_at' => '2018-05-24'
        	]
        ]);
    }
}
