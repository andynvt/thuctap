<?php

use Illuminate\Database\Seeder;

class FeedBacksTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('feedbacks')->insert([
            [
            	'id_place' => '1',
            	'star' => '2',
            	'created_at' => '2018-05-21',
            	'updated_at' => '2018-05-24',
        	],
        	[
            	'id_place' => '2',
            	'star' => '4',
            	'created_at' => '2018-05-21',
            	'updated_at' => '2018-05-24',
        	],
        	[
            	'id_place' => '3',
            	'star' => '3.5',
            	'created_at' => '2018-05-21',
            	'updated_at' => '2018-05-24',
        	], 
        	[
            	'id_place' => '4',
            	'star' => '2.5',
            	'created_at' => '2018-05-21',
            	'updated_at' => '2018-05-24',
        	],
        	[
            	'id_place' => '5',
            	'star' => '1.5',
            	'created_at' => '2018-05-21',
            	'updated_at' => '2018-05-24',
        	],           
        	[
            	'id_place' => '6',
            	'star' => '5',
            	'created_at' => '2018-05-21',
            	'updated_at' => '2018-05-24',
        	],
        	[
            	'id_place' => '7',
            	'star' => '4',
            	'created_at' => '2018-05-21',
            	'updated_at' => '2018-05-24',
        	],
        	[
            	'id_place' => '8',
            	'star' => '1',
            	'created_at' => '2018-05-21',
            	'updated_at' => '2018-05-24',
        	],
        	[
            	'id_place' => '9',
            	'star' => '2',
            	'created_at' => '2018-05-21',
            	'updated_at' => '2018-05-24',
        	],
        	[
            	'id_place' => '10',
            	'star' => '3.5',
            	'created_at' => '2018-05-21',
            	'updated_at' => '2018-05-24',
        	],
        	[
            	'id_place' => '11',
            	'star' => '3.5',
            	'created_at' => '2018-05-21',
            	'updated_at' => '2018-05-24',
        	],
        	[
            	'id_place' => '12',
            	'star' => '5',
            	'created_at' => '2018-05-21',
            	'updated_at' => '2018-05-24',
        	],
        	[
            	'id_place' => '13',
            	'star' => '3',
            	'created_at' => '2018-05-21',
            	'updated_at' => '2018-05-24',
        	],
        	[
            	'id_place' => '14',
            	'star' => '2',
            	'created_at' => '2018-05-21',
            	'updated_at' => '2018-05-24',
        	],
        	[
            	'id_place' => '15',
            	'star' => '1',
            	'created_at' => '2018-05-21',
            	'updated_at' => '2018-05-24',
        	]


        ]);
    }
}
