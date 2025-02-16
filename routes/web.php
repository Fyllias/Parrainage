<?php

use Illuminate\Support\Facades\Route;

use App\Http\Controllers\EtudiantController;
use App\Http\Controllers\ManagerController;
use App\Http\Controllers\CertificatController;

Route::get('/', function () {
    return view('welcome');
});


Route::get('/presentation', function () {
    return view('pages.presentation');
});

Route::get('/currentp', function () {
    return view('pages.currentp');
});


// new

Route::get('/register', [EtudiantController::class, 'showRegisterForm'])->name('register.form');
Route::post('/register', [EtudiantController::class, 'submitRegisterForm'])->name('register.submit');

Route::get('/authinfo', [EtudiantController::class, 'showAuthInfoForm'])->name('authinfo.form');
Route::post('/authinfo', [EtudiantController::class, 'submitAuthInfoForm'])->name('authinfo.submit');

Route::get('/login', [EtudiantController::class, 'showLoginForm'])->name('login.form');
Route::post('/login', [EtudiantController::class, 'submitLoginForm'])->name('login.submit');


Route::post('/authpcto', [ManagerController::class, 'authenticate'])->name('manager.authenticate');
Route::get('/authpcto', function () {
    return view('auth.pcto');
});

Route::get('/dashboard', [ManagerController::class, 'dashboard'])->name('manager.dashboard');
Route::get('/assign', [ManagerController::class, 'assign'])->name('manager.assign');


Route::get('/certificat/download', [CertificatController::class, 'download'])->name('certificat.download');


Route::get('/profile', [EtudiantController::class, 'showProfile'])->name('profile')->middleware('auth');



Route::get('/logout', [EtudiantController::class, 'logout'])->name('logout');
