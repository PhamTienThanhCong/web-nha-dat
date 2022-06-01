<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePostsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('posts', function (Blueprint $table) {
            $table->id();
            $table->foreignId('admins_id')->constrained('admins');
            $table->string('title');
            $table->float('price');
            $table->tinyInteger('price_type');
            $table->string('address');
            $table->string('description1');
            $table->text('description2');
            $table->tinyInteger('type');
            $table->tinyInteger('done')->default('1');
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
        Schema::dropIfExists('posts');
    }
}
