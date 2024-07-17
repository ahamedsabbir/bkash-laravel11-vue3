<?php

use App\Http\Controllers\ProductController;
use App\Http\Controllers\SanctumController;
use App\Http\Controllers\TransactionController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

Route::get('/user', function (Request $request) {
    return $request->user();
})->middleware('auth:sanctum');



Route::post("/register", [SanctumController::class, 'register']);
Route::post("/login", [SanctumController::class, 'login']);
Route::post("/logout", [SanctumController::class], 'logout')->middleware('auth:sanctum');
Route::get("/profile/{id}", [SanctumController::class, 'profile'])->middleware('auth:sanctum');
Route::get("/profile/image/", [SanctumController::class, 'profileImage'])->middleware('auth:sanctum');

Route::get("/products", [ProductController::class, 'index'])->middleware('auth:sanctum');

Route::get("/history/{id}", [TransactionController::class, 'index'])->middleware('auth:sanctum');
Route::post("/transaction", [TransactionController::class, 'transfer']);

