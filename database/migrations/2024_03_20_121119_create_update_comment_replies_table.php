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
        Schema::create('update_comment_replies', function (Blueprint $table) {
            $table->id();
            $table->text('body')->nullable();
            $table->unsignedBigInteger('user_id');
            $table->unsignedBigInteger('comment_id');
            $table->foreign('user_id')->references('id')->on('users')->onDelete('cascade');
            $table->foreign('comment_id')->references('id')->on('bang_update_comments')->onDelete('cascade');
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
        Schema::dropIfExists('update_comment_replies');
    }
};
