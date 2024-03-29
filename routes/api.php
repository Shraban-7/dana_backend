<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\BidController;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\StockController;
use App\Http\Controllers\CompanyController;
use App\Http\Controllers\TransactionController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});


Route::controller(AuthController::class)->group(function () {
    Route::get('user_list', 'index');
    Route::post('login', 'login');
    Route::post('register', 'register');
    Route::post('logout', 'logout');
    Route::post('refresh', 'refresh');
});

Route::get('stocks',[StockController::class,'stock']);
Route::get('analytics',[StockController::class,'analytics']);
Route::get('fetch_data/{company}/{time}',[StockController::class,'fetchData']);

Route::get('companies',[CompanyController::class,'index']);

// Routes for placing bids
Route::post('/bids', [BidController::class, 'store'])->name('bids.store');

// Routes for executing transactions
Route::post('/transaction/save', [TransactionController::class, 'store'])->name('transactions.store');

Route::get('/transactions', [TransactionController::class, 'index'])->name('transactions.index');


