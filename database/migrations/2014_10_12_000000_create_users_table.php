<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('users', function (Blueprint $table) {
            $table->id();
            $table->string('name')->unique();
            $table->string('email')->unique();
            $table->timestamp('email_verified_at')->nullable();
            $table->string('image')->nullable();
            $table->string('public_id')->nullable();
            $table->boolean('public')->default(0); 
            $table->boolean('subscribe')->default(0); 
            $table->string('password');
            $table->string('phone_number')->nullable();
            $table->string('country_code')->nullable();
            $table->string('date_of_birth')->nullable();
            $table->enum('status')->nullable();
            $table->string('occupation')->nullable();
            $table->string('bio')->nullable();
            $table->integer('role_id')->nullable();
            $table->string('device_token');
            $table->decimal('price')->nullable();
            $table->decimal('subscriptionPrice')->nullable();
            $table->timestamp('last_seen')->nullable();
            $table->boolean('isOnline')->default(0);
            $table->rememberToken();
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
        Schema::dropIfExists('users');
    }
}
