<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $this->call([
        	CitiesTableSeeder::class,
            PlaceTypeTableSeeder::class,
            PlacesTableSeeder::class,
            PlaceImageTableSeeder::class,            
            FeedBacksTableSeeder::class,
            PlaceLocationTableSeeder::class,
            TravelTableSeeder::class,
            UserLocationTableSeeder::class
            
        ]);
    }
}
