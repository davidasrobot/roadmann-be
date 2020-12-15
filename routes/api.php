<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

Route::get('init', 'PageController@init');
Route::post('contact', 'PageController@store');
Route::post('subscribe', 'PageController@subscribe');

Route::get('blog/{slug}', 'PageController@get_blog');
Route::get('artist/{slug}', 'PageController@get_artist');
