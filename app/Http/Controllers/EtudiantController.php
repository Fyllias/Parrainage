<?php

namespace App\Http\Controllers;

use App\Models\Etudiant;
use App\Models\Option;
use App\Models\Filleul;
use App\Models\Parrain;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Auth;

class EtudiantController extends Controller
{
    public function showRegisterForm()
    {
        return view('auth.register');
    }

    public function submitRegisterForm(Request $request)
    {
        // Valider les données
        $request->validate([
            'email' => 'required|email|unique:etudiants,email',
            'password' => 'required|confirmed|min:6',
        ]);

        // Stocker les données dans la session
        $request->session()->put('register_data', $request->only('email', 'password'));

        // Rediriger vers la page suivante
        return redirect()->route('authinfo.form');
    }

    public function showAuthInfoForm()
    {
          // Récupérer les options depuis la table `options`
    $options = Option::all();

    // Passer les options à la vue
    return view('auth.info', compact('options'));
    }

    public function submitAuthInfoForm(Request $request)
    {
        // Valider les données
        $request->validate([
            'first-name' => 'required|string|max:255',
            'last-name' => 'required|string|max:255',
            'matricule' => 'required|string|unique:etudiants,matricule',
            'filiere' => 'required|exists:options,id',
            'phone' => 'required|regex:/^[0-9]{3}-[0-9]{3}-[0-9]{3}$/',
            'image' => 'nullable|image|mimes:jpg,jpeg,png|max:2048',
        ]);

        // Récupérer les données de la session
        $registerData = $request->session()->get('register_data');

        // Gérer l'upload de l'image
        $imagePath = null;
        if ($request->hasFile('image')) {
            $imageName = time().'.'.$request->image->extension();
            $request->image->move(public_path('images'), $imageName);
        //    $nameFile = $request->file('image')->getClientOriginalName();
        //    $imagePath = $request->file('image')->store('public/images');
            $imagePath = 'images/'.$imageName;
        }

        // Créer l'utilisateur
        Etudiant::create([
            'nom' => $request->input('last-name'),
            'prenom' => $request->input('first-name'),
            'matricule' => $request->input('matricule'),
            'email' => $registerData['email'],
            'phone' => $request->input('phone'),
            'password' => Hash::make($registerData['password']),
            'id_option' => $request->input('filiere'),
             'image' => $imagePath,
            //'image' => 'favicon.png',
        ]);

        // Effacer les données de la session
        // $request->session()->forget('register_data');

        // Rediriger avec un message de succès
        return redirect()->route('login.form')->with('success', 'Inscription réussie, connectez-vous ou consultez vos mails pour plus d\'informations.');
    }

    public function showLoginForm()
    {
        return view('auth.login');
    }
    public function submitLoginForm(Request $request)
{
    // Valider les données
    $credentials = $request->validate([
        'email' => 'required|email',
        'password' => 'required',
    ]);

    // Tentative de connexion
    if (Auth::attempt($credentials)) {
        // Regénérer la session
        $request->session()->regenerate();

        // Rediriger vers le profil
        return redirect()->route('profile')->with('success', 'Connexion réussie !');
    }

    // Retourner avec un message d'erreur
    return back()->withErrors([
        'email' => 'Les informations d’identification ne correspondent pas.',
    ])->onlyInput('email');
}

public function showProfile()
{
    $etudiant = Auth::user();
    
    // Initialize variables
    $parrain = null;
    $filleuls = null;

    // Check if the student is a filleul (check in the `Filleul` table)
    $filleul = Filleul::where('id_etudiant', $etudiant->id)->first();

    if ($filleul) {
        // If the student is a filleul, get the parrain of this filleul
        $parrain = Parrain::with('etudiant')->where('id', $filleul->id_parrain)->first();
    } else {
        // If the student is not a filleul, check if they are a parrain
        $parrain = Parrain::where('id_etudiant', $etudiant->id)->first();

        if ($parrain) {
            // If the student is a parrain, retrieve their filleuls
            $filleuls = Filleul::with('etudiant')->where('id_parrain', $parrain->id)->get();
        }
    }

    // Return the view with the data
    return view('pages.profil', compact('etudiant', 'parrain', 'filleuls'));
}




public function logout(Request $request)
    {
        // Déconnecter l'utilisateur
        Auth::logout();

        // Invalider la session actuelle
        $request->session()->invalidate();

        // Regénérer le token CSRF pour éviter les conflits
        $request->session()->regenerateToken();

        // Rediriger vers la page de connexion
        return redirect()->route('login.form')->with('success', 'Vous êtes déconnecté.');
    }

}


