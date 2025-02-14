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
        if (!Schema::hasTable('withdrawals')) { // Check if the table exists
            Schema::create('withdrawals', function (Blueprint $table) {
                $table->id();
                $table->string('amount');
                $table->string('fee');
                $table->string('reference_number');
                $table->string('destination');
                $table->string('channel');
                $table->enum('status', ['complete', 'fail', 'pending', 'canceled']);
                $table->foreignId('user_id')->constrained('users')->onDelete('cascade');
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
        Schema::dropIfExists('withdrawals');
    }
};
