<?php

namespace Database\Seeders;

use App\Models\Post;
use App\Models\Category;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        //\App\Models\User::factory(10)->create();

        for($i=0; $i<20; $i++){

            DB::table('category_post')->insert(
                [
                    'post_id' => Post::all()->random()->id,
                    'category_id' => Category::all()->random()->id
                ]
            );
        }
        
    }
}
