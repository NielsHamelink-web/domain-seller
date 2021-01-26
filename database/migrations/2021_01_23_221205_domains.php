<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class Domains extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        // Create domains table
        Schema::create('domains', function (Blueprint $table) {
            $table->id();
            $table->string('domain_name');
            $table->integer('category_id')->unsigned();
            $table->longText('description');
            $table->double('min_bid_price');
            $table->double('buy_now_price');
            $table->string('meta_title');
            $table->text('meta_description');
            $table->integer('active')->default(1);
            $table->timestamps();

            // Relations
            $table->foreign('category_id')->references('id')->on('categories');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        // Drop domains table
        Schema::drop('domains');
    }
}
