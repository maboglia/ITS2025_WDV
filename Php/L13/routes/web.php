<?php

use App\Http\Controllers\GameController;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('home');
})->name(name: 'home');

Route::get('/about', function (){
   return  view('about'); 
})->name('about');

//chiami la rotta /games -> controller GameController -> index
Route::get('/games', [GameController::class, 'index']);

Route::get('/games/{id}', [GameController::class, 'show'])->name('games');