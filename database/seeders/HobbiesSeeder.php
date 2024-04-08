<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class HobbiesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
      $hobbies = [
		    ['name' => 'Music'],
		    ['name' => 'Acting'],
		    ['name' => 'Gossip'],
		    ['name' => 'Football'],
		    ['name' => 'Entrepreneurship'],
		    ['name' => 'Computer programming'],
		    ['name' => 'Painting'],
		    ['name' => 'Creative writing'],
		    ['name' => 'Dance'],
		    ['name' => 'Drama'],
		    ['name' => 'Drawing'],
		    ['name' => 'Boxing'],
		    ['name' => 'Electronics'],
		    ['name' => 'Fashion'],
		    ['name' => 'Partying'],
		    ['name' => 'Car lover'],
		    ['name' => 'Gaming'],
		    ['name' => 'Interior designer'],
		    ['name' => 'Gambling'],
		    ['name' => 'Jewelry making'],
		    ['name' => 'Magic'],
		    ['name' => 'Listening to music'],
		    ['name' => 'Playing musical instruments'],
		    ['name' => 'Pet'],
		    ['name' => 'Pottery'],
		    ['name' => 'Reading'],
		    ['name' => 'Singing'],
		    ['name' => 'Sports'],
		    ['name' => 'Stand-up comedy'],
		    ['name' => 'Video gaming'],
		    ['name' => 'Watching movies'],
		    ['name' => 'Web surfing'],
		    ['name' => 'Writing'],
		    ['name' => 'Yoga'],
		    ['name' => 'Basketball'],
		    ['name' => 'Board sports'],
		    ['name' => 'Bodybuilding'],
		    ['name' => 'Community'],
		    ['name' => 'Cycling'],
		    ['name' => 'Driving'],
		    ['name' => 'Fishing'],
		    ['name' => 'Gardening'],
		    ['name' => 'Graffiti'],
		    ['name' => 'Hiking'],
		    ['name' => 'Hunting'],
		    ['name' => 'Jogging'],
		    ['name' => 'Motor sports'],
		    ['name' => 'Mountain biking'],
		    ['name' => 'Netball'],
		    ['name' => 'Photography'],
		    ['name' => 'Running'],
		    ['name' => 'Shopping'],
		    ['name' => 'Vacation'],
		    // Add more hobbies as needed
		];

        // Extract the 'name' values from the array
		$hobbyNames = array_column($hobbies, 'name');
		// Remove duplicates and preserve the keys
		$uniqueHobbyNames = array_unique($hobbyNames);
		// Rebuild the hobbies array with unique 'name' values
		$uniqueHobbies = [];
		foreach ($uniqueHobbyNames as $name) {
		    $uniqueHobbies[] = ['name' => $name];
		}

        DB::table('hobbies')->insert($uniqueHobbies);
    }
}
