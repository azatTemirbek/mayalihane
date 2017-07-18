<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use TCG\Voyager\Models\Post;



class haberController extends Controller
{
    public function getAllHaber(){
    	$posts = Post::orderBy('id','desc')->paginate(5);
    	return view ('haber', ['posts'=>$posts]);
    }

    public function singleHaber($slug){
    	$post = Post::where('slug', $slug)->first();
    	return view('haberr', ['post'=>$post]);
    }
}
// 