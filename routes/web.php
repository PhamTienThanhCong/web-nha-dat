<?php

use App\Http\Controllers\AdminController;
use Illuminate\Support\Facades\Route;

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

Route::get('/admin', [AdminController::class, 'login'])->name('admin.login');
Route::get('/admin/dang-ki', [AdminController::class, 'register'])->name('admin.register');
Route::post('/admin/login-processing', [AdminController::class, 'loginProcessing'])->name('admin.loginProcessing');
Route::post('/admin/register-processing', [AdminController::class, 'registerProcessing'])->name('admin.registerProcessing');
Route::get('/admin/logout', [AdminController::class, 'logout'])->name('admin.logout');

Route::get('/admin/tai-khoan-cua-toi', [AdminController::class, 'show'])->name('admin.myAccount');
Route::get('/moi-gioi/tai-khoan-cua-toi', [AdminController::class, 'show'])->name('seller.myAccount');
Route::put('/admin/update', [AdminController::class, 'update'])->name('admin.myAccountUpdate');
Route::put('/admin/update-password', [AdminController::class, 'updatePassword'])->name('admin.myAccountUpdatePassword');

Route::get('/admin/quan-ly-seller', [AdminController::class, 'showAll'])->name('admin.managerSeller');
Route::get('/admin/quan-ly-seller/xem-nhan-vien-ma-{admin_id}', [AdminController::class, 'show_one'])->name('admin.viewSeller');
Route::get('/admin/quan-ly-seller/xem-nhan-vien-ma-{admin_id}/cap-nhap-{type}', [AdminController::class, 'edit'])->name('admin.SellerUpdate');