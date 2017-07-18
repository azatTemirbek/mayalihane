<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Products;

class productController extends Controller
{
    public function getAllproducts(){
    	$products=Products::get();
    	$b=$products->where('category', 'DÜŞÜK PROTEİNLİ');
    	$a=$products->where('category', 'GLUTENSİZ');
    	$c=$products->where('category', 'EKŞİ MAYALI');
    	return view('products',['products'=>$a,'products1'=>$b,'products2'=>$c]);
    }

    public function getOneProducts($slug = '')
    {
    	$product = Products::where('slug', $slug)->first();
    	return view('product', ['product'=>$product]);
    }
}
