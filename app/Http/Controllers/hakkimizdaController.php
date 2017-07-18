<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Hakkimizda;

class hakkimizdaController extends Controller
{
    public function getH()
    {
    	$hakimzda=Hakkimizda::get()->first();
    	
    	return view('hakkimizda', ['hakimizda' => $hakimzda]);
    }
}
