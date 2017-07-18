<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use TCG\Voyager\Models\Page;
use TCG\Voyager\Models\Post;
use App\Galeris;
use App\Products;
use App\Contacts;


class anasayfaController extends Controller
{
    public function all()
    {
    	$info = Contacts::all()->first();
    	$page=Page::orderBy('id','asd')->first();
    	$galleri=Galeris::where('featured', 'true')->get();
    	$post = Post::orderBy('id','desc')->first();
    	$product = Products::where('featured', '1')->get();
    	return view ('index', ['page'=>$page, 'post'=>$post, 'galleris'=>$galleri, 'product'=>$product, 'info'=>$info]);
    }
}