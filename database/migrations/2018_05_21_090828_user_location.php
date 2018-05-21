<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class UserLocation extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('user_location', function ($table) {
            $table->increments('id');
            $table->integer('id_first')->unsigned();
            $table->foreign('id_first')->references('id')->on('user_first_location');
            $table->integer('id_last')->unsigned();
            $table->foreign('id_last')->references('id')->on('user_first_location');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('user_location');
    }
}
