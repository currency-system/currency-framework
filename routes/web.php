<?php

use Illuminate\Support\Facades\Route;
use \App\Http\Controllers\CurrencyController;

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

Route::get('/', [CurrencyController::class, 'home'])->middleware('auth');
Route::post('/calculate', [CurrencyController::class, 'calculate'])->middleware('auth');

Route::middleware(['auth:sanctum', 'verified'])->get('/home', [CurrencyController::class, 'home'])->name('home');
#Route::middleware(['auth:sanctum', 'verified'])->post('/calculate', [CurrencyController::class, 'calculate'])->name('calculate');
Route::middleware(['auth:sanctum', 'verified'])->get('/data', [CurrencyController::class, 'data'])->name('data');
Route::middleware(['auth:sanctum', 'verified'])->get('/load', [CurrencyController::class, 'load'])->name('load');

Route::get('/logout', function () {
    \Illuminate\Support\Facades\Auth::logout();
    return redirect('login');
})->name('logout');
