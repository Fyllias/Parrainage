<?php

namespace App\Http\Controllers;

use App\Models\Filleul;
use App\Models\Parrain;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Barryvdh\DomPDF\Facade\Pdf;

class CertificatController extends Controller
{
    public function download(Request $request)
    {
        $etudiant = Auth::user();
        // Vérifier si l'étudiant est un filleul (présence dans la table `Filleul`)
    $filleul = Filleul::where('id_etudiant', $etudiant->id)->first();
    $parrain = null;
    $filleuls = null;

    if ($filleul) {
        // Récupérer le parrain de ce filleul
        $parrain = Parrain::with('etudiant')->where('id', $filleul->id_parrain)->first();
    } else {
        // Vérifier si l'étudiant est un parrain (présence dans la table `Parrain`)
        $parrain = Parrain::where('id_etudiant', $etudiant->id)->first();
        if ($parrain) {
            // Récupérer les filleuls du parrain
            $filleuls = Filleul::with('etudiant')->where('id_parrain', $parrain->id)->get();
            // $filleuls = $filleuls1[0];
            $parrain = null;
        }
    }         

        $data = [
            'etudiant' => $etudiant,
            'parrain' => $parrain,
            'annee' => now()->year,
        ];

        // Use Pdf facade correctly
        $pdf = Pdf::loadView('certificat', $data)->setPaper('a4', 'landscape');

        return $pdf->download('certificat_de_parrainage.pdf');
    }
}
