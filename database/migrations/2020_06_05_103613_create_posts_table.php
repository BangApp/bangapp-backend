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
            $table->foreignId('user_id')->constrained('users');
            $table->text('body')->nullable();
            $table->enum('type', ['image', 'video']);
            $table->string('image')->nullable();
            $table->string('challenge_img')->nullable();
            $table->string('aspect_ratio')->nullable(); // Added column
            $table->string('cache_url')->nullable(); // Added column
            $table->string('thumbnail_url')->nullable(); // Added column
            $table->boolean('pinned')->default(false); // Changed to boolean
            $table->boolean('is_seen')->default(false); // Changed to boolean
            $table->string('public_id')->nullable();
            $table->decimal('price', 10, 2)->nullable(); // Adjusted precision and scale
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
