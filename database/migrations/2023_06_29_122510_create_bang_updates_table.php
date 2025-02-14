<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('bang_updates', function (Blueprint $table) {
            $table->id();
            $table->string('caption');
            $table->string('filename');
            $table->enum('type', ['video', 'image']);
            $table->unsignedBigInteger('user_id');
            $table->string('cache_url')->nullable();
            $table->string('thumbnail_url')->nullable();
            $table->string('aspect_ratio')->nullable();
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
        Schema::dropIfExists('bang_updates');
    }
};
