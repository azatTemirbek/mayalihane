<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', [
	'uses' => 'anasayfaController@all'
	]);
Route::get('/galeri',[
	'uses' => 'GaleriController@getAllGaleri'
	]);
Route::get('/products',[
	'uses' => 'productController@getAllproducts'
	]);
Route::get('/products/{slug}',[
	'uses' => 'productController@getOneProducts'
	]);
Route::get('/haber',[
	'uses' => 'haberController@getAllHaber'
	]);
Route::get('/haber/{slug}',[
	'uses' => 'haberController@singleHaber'
	]);

Route::get('/contact',[
	'uses'=>'contactController@info'
	]);

Route::get('/hakkimizda',[
	'uses' => 'hakkimizdaController@getH'
]);



Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
