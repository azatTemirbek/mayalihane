<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Contacts;

class contactController extends Controller
{
    public function info(){
    	$posts = Contacts::all()->first();
    	return view ('contact', ['info'=>$posts]);
    }
}
