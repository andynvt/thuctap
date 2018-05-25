<?php

use Illuminate\Database\Seeder;

class PlaceLocationTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('place_location')->insert([
            [
            	'id_place' => '1',
            	'x' => '260',
            	'y' => '315',
            	'created_at' => '2018-05-21',
            	'updated_at' => '2018-05-24'
        	],
        	[
            	'id_place' => '2',
            	'x' => '120',
            	'y' => '315',
            	'created_at' => '2018-05-21',
            	'updated_at' => '2018-05-24'
        	],
        	[
            	'id_place' => '3',
            	'x' => '230',
            	'y' => '315',
            	'created_at' => '2018-05-21',
            	'updated_at' => '2018-05-24'
        	],
        	[
            	'id_place' => '4',
            	'x' => '450',
            	'y' => '315',
            	'created_at' => '2018-05-21',
            	'updated_at' => '2018-05-24'
        	],
        	[
            	'id_place' => '5',
            	'x' => '430',
            	'y' => '315',
            	'created_at' => '2018-05-21',
            	'updated_at' => '2018-05-24'
        	],
        	[
            	'id_place' => '6',
            	'x' => '330',
            	'y' => '315',
            	'created_at' => '2018-05-21',
            	'updated_at' => '2018-05-24'
        	],
        	[
            	'id_place' => '7',
            	'x' => '670',
            	'y' => '315',
            	'created_at' => '2018-05-21',
            	'updated_at' => '2018-05-24'
        	],
        	[
            	'id_place' => '8',
            	'x' => '780',
            	'y' => '315',
            	'created_at' => '2018-05-21',
            	'updated_at' => '2018-05-24'
        	],
        	[
            	'id_place' => '9',
            	'x' => '870',
            	'y' => '315',
            	'created_at' => '2018-05-21',
            	'updated_at' => '2018-05-24'
        	],
        	[
            	'id_place' => '10',
            	'x' => '390',
            	'y' => '315',
            	'created_at' => '2018-05-21',
            	'updated_at' => '2018-05-24'
        	],
        	[
            	'id_place' => '11',
            	'x' => '660',
            	'y' => '315',
            	'created_at' => '2018-05-21',
            	'updated_at' => '2018-05-24'
        	],
        	[
            	'id_place' => '12',
            	'x' => '560',
            	'y' => '315',
            	'created_at' => '2018-05-21',
            	'updated_at' => '2018-05-24'
        	],
        	[
            	'id_place' => '13',
            	'x' => '900',
            	'y' => '315',
            	'created_at' => '2018-05-21',
            	'updated_at' => '2018-05-24'
        	],
        	[
            	'id_place' => '14',
            	'x' => '870',
            	'y' => '315',
            	'created_at' => '2018-05-21',
            	'updated_at' => '2018-05-24'
        	],
        	[
            	'id_place' => '15',
            	'x' => '880',
            	'y' => '315',
            	'created_at' => '2018-05-21',
            	'updated_at' => '2018-05-24'
        	]

        ]);
    }
}
