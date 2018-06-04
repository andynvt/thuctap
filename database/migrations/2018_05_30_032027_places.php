<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class Places extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('places', function ($table) {
            $table->increments('id');
            $table->integer('id_type')->unsigned();
            $table->foreign('id_type')->references('id')->on('place_type');
            $table->integer('id_district')->unsigned();
            $table->foreign('id_district')->references('id')->on('districts');
            $table->string('name');
            $table->text('slogan');
            $table->text('short_des');
            $table->longtext('full_des');
            $table->text('map');
            $table->text('address');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('places');
    }
}
