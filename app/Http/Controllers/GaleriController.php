<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Galeris; //Including Scheme from main directory



class GaleriController extends Controller
{
    public function getAllGaleri(){
    	$galeries = Galeris::get();
    	return view ('galeri', ['galeries'=>$galeries]);
    }
}
// TCG\Voyager\Models\Post