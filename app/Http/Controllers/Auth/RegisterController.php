<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Models\Etudiant;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class RegisterController extends Controller
{
    public function register(Request $request)
    {
        $validated = $request->validate([
            'nom' => 'required|string|max:255',
            'prenom' => 'required|string|max:255',
            'matricule' => 'required|string|unique:etudiants',
            'email' => 'required|string|email|max:255|unique:etudiants',
            'phone' => 'required|string|max:15',
            'password' => 'required|string|min:8|confirmed',
            'id_option' => 'nullable|exists:options,id',
        ]);

        $etudiant = Etudiant::create([
            'nom' => $validated['nom'],
            'prenom' => $validated['prenom'],
            'matricule' => $validated['matricule'],
            'email' => $validated['email'],
            'phone' => $validated['phone'],
            'password' => Hash::make($validated['password']),
            'id_option' => $validated['id_option'],
        ]);

        return redirect('/login')->with('success', 'Inscription réussie !');
    }
}
