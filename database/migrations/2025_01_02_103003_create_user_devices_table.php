<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateUserDevicesTable extends Migration
{
    public function up()
    {
        Schema::create('user_devices', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('user_id');
            $table->string('device_type')->nullable(); // e.g., Android, iOS
            $table->string('unique_id')->nullable(); // Unique identifier for the device
            $table->string('device_token')->nullable(); // Push notification token
            $table->string('device_model')->nullable(); // Device model
            $table->string('os_version')->nullable(); // OS version
            $table->string('status')->default('active'); // e.g., active, banned, etc.
            $table->string('last_logged_in_at')->nullable(); // Last login time
            $table->string('banned_at')->nullable(); // When the device was banned
            $table->string('reactivated_at')->nullable(); // When the device was reactivated
            $table->timestamps();
            $table->foreign('user_id')->references('id')->on('users')->onDelete('cascade');
        });
    }

    public function down()
    {
        Schema::dropIfExists('user_devices');
    }
}
