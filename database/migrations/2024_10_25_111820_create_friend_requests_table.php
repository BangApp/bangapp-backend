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


        if (!Schema::hasTable('friend_requests')) { // Check if the table exists
            Schema::create('friend_requests', function (Blueprint $table) {
                $table->id();
                $table->foreignId('sender_id')->constrained('users')->onDelete('cascade');
                $table->foreignId('receiver_id')->constrained('users')->onDelete('cascade');
                $table->enum('status', ['pending', 'accepted', 'declined'])->default('pending');
                $table->unique(['sender_id', 'receiver_id']); // To prevent duplicate requests
                $table->timestamps();
            });
        }
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('friend_requests');
    }
};
