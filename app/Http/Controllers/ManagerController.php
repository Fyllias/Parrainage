<?php

namespace App\Http\Controllers;

use App\Models\Manager;

use App\Models\Filleul;
use App\Models\Parrain;
use App\Models\Etudiant;

use App\Events\AttributionProgress;

use Illuminate\Support\Facades\Mail;
use Illuminate\Http\Request;

class ManagerController extends Controller
{
    public function authenticate(Request $request)
    {
        $code = $request->input('uniqueCode');
        
        // Vérifier si le code correspond à un manager
        $manager = Manager::where('code', $code)->first();
        
        if ($manager) {
            // Stocker l'identifiant du manager dans la session
            $request->session()->put('manager_id', $manager->id);

            // Rediriger vers la page de gestion
            return redirect()->route('manager.dashboard');
        }

        // En cas d'échec, rediriger avec un message d'erreur
        return redirect()->back()->withErrors(['uniqueCode' => 'Code invalide.']);
    }

    public function dashboard(Request $request)
    {
        $managerId = $request->session()->get('manager_id');
    
        if (!$managerId) {
            return redirect()->route('manager.authenticate')->withErrors(['message' => 'Vous devez vous connecter.']);
        }
    
        $manager = Manager::find($managerId);
        $option = $manager->etudiant->option; // Option associée au manager connecté
    
        if (!$option) {
            return redirect()->back()->withErrors(['message' => 'Option non trouvée pour le manager.']);
        }
        // NOM de l'option 
        $optionName = $option->nom."/".$option->link;
        // Étudiants ayant la même option (nom) que le manager
        $parrainsCount = Etudiant::whereHas('option', function ($query) use ($option) {
            $query->where('nom', $option->nom);
        })->count();

        $request->session()->put('parrainsCount', $parrainsCount);
    
        // Étudiants ayant la même option (nom) que le link que le manager
        $filleulsCount = Etudiant::whereHas('option', function ($query) use ($option) {
            $query->where('nom', $option->link);
        })->count();

        $request->session()->put('filleulsCount', $filleulsCount);
    
        return view('pages.attribution', compact('parrainsCount', 'filleulsCount', 'optionName'));
    }

    public function assign(Request $request)
    {

        try {
        $managerId = $request->session()->get('manager_id');
        $manager = Manager::find($managerId);
        $optionName1 = $manager->etudiant->option->nom;
        $optionLink = $manager->etudiant->option->link;

        $optionName = $optionName1."./.".$optionLink;

        //var_dump($optionName); die;

        $parrainsCount = $request->session()->get('parrainsCount');
        $filleulsCount = $request->session()->get('filleulsCount');

       // var_dump($parrainsCount); die;
     
        if (!$manager) {
            return response()->json(['message' => 'Manager introuvable.'], 404);
        }
    
    
        // Étape 1 : Récupérer les parrains (étudiants ayant la même option que le manager)
        $parrains = Etudiant::whereHas('option', function ($query) use ($optionName1) {
            $query->where('nom', $optionName1);
        })->get();

        //var_dump($parrains); die;

    
        // Étape 2 : Récupérer les filleuls (étudiants dont l'option link correspond)
        $filleuls = Etudiant::whereHas('option', function ($query) use ($optionLink) {
            $query->where('nom', $optionLink);
        })->get();

        // var_dump($filleuls); die;
    
       
        $indexParrain = 0; // Index pour suivre le parrain à attribuer

        if ($parrains->isEmpty() || $filleuls->isEmpty()) {
            $optionName = $optionName."/.".$optionLink;

            return view('pages.attribution', compact('parrainsCount', 'filleulsCount', 'optionName'));
        }

        foreach ($filleuls as $filleul) {


            // Vérifier si le filleul existe déjà dans la table Filleul
            if (Filleul::where('id_etudiant', $filleul->id)->exists()) {
                continue; // Passer au prochain filleul
            }
    
            // Sélectionner un parrain
            $parrainEtudiant = $parrains[$indexParrain];

    
            //Ajouter le parrain dans la table Parrain s'il n'existe pas encore
            $parrain = Parrain::firstOrCreate(
                ['id_etudiant' => $parrainEtudiant->id, 
                ]);
    
            // Ajouter le filleul avec son parrain
            Filleul::create([
                'id_etudiant' => $filleul->id,
                'id_parrain' => $parrain->id,
            ]);


            // $parrain = new Parrain(['id_etudiant' => $parrainEtudiant->id]);
            // $parrain->save();

            // $filleul = new Filleul([
            //     'id_etudiant' => $filleul->id,
            //     'id_parrain' => $parrain->id,
            // ]);
            // $filleul->save();

    
            // Passer au parrain suivant (round-robin)
            $indexParrain = ($indexParrain + 1) % $parrains->count();
    
            // Envoyer une notification
            $this->envoyerNotification($parrainEtudiant, $filleul);

        }
         // Retourner la réponse avec la progression
        
        return view('pages.attribution', compact('parrainsCount', 'filleulsCount', 'optionName'));
    
           

    } catch (\Exception $e) {
        return response()->json(['error' => $e->getMessage()], 500);
    }
    }
    



    
    private function envoyerNotification($parrain, $filleul)
    {
        $detailsParrain = [
            'nom' => $parrain->nom,
            'prenom' => $parrain->prenom,
            'email' => $parrain->email,
            'phone' => $parrain->phone,
            'option' => $parrain->option->nom,
            'photo' => $parrain->image
        ];
    
        $detailsFilleul = [
            'nom' => $filleul->nom,
            'prenom' => $filleul->prenom,
            'email' => $filleul->email,
            'phone' => $filleul->phone,
            'option' => $filleul->option->nom,
            'photo' => $filleul->image
        ];
    
        $details = [
            'parrain' => $detailsParrain,
            'filleul' => $detailsFilleul,
            'message' => 'Vous pourrez télécharger le certificat en ligne dès qu’il sera disponible.'
        ];
    
        // Envoyer les emails
        Mail::to($parrain->email)->send(new \App\Mail\AttributionMail($details, 'parrain'));
        Mail::to($filleul->email)->send(new \App\Mail\AttributionMail($details, 'filleul'));
    }
}
