@extends('layouts.header')

@section('content')

<div class="max-w-md mx-auto bg-white shadow-lg rounded-lg p-6 mb-6">
    <h2 class="text-xl font-semibold mb-4">Mon Profil</h2>
    <div class="flex items-center mb-4">
        <img src="{{ $etudiant->image ?? 'https://via.placeholder.com/64' }}" alt="Profil" class="h-16 w-16 rounded-full mr-4 object-cover ">
        <div>
            <h3 class="font-bold">{{ $etudiant->prenom ?? 'Non défini'}} {{ $etudiant->nom ?? 'Non défini' }}</h3>
            <p>{{ $etudiant->email ?? 'Non défini' }}</p>
            <p>{{ $etudiant->phone ?? 'Non défini' }}</p>
            <p>{{ $etudiant->matricule ?? 'Non défini'}}</p>
            <p>{{ $etudiant->option->nom ?? 'Non défini' }}</p>
        </div>
    </div>
    @if($parrain)
        <h2 class="text-xl font-semibold mb-4">Certifiacat disponible !!!</h2>
        <a href="{{ route('certificat.download') }}" class="bg-[#548CA8] flex items-center text-white px-4 py-2 rounded shadow hover:bg-blue-600">
            <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 mr-2" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 4v16m8-8H4" />
            </svg>
            Télécharger mon certificat
        </a>
@endif

</div>

@if($parrain && $filleuls === null)
    <!-- Afficher le parrain si l'utilisateur est un filleul -->
    <div class="max-w-md mx-auto bg-white shadow-lg rounded-lg p-6">
        <h2 class="text-xl font-semibold mb-4">Mon Parrain</h2>
        <div class="flex items-center mb-4">
            <img src="{{ $parrain->etudiant->image ?? 'https://via.placeholder.com/64' }}" alt="Parrain" class="h-16 w-16 rounded-full mr-4 object-cover">
            <div>
                <h3 class="font-bold">{{ $parrain->etudiant->prenom ?? 'Non défini' }} {{ $parrain->etudiant->nom ?? 'Non défini' }}</h3>
                <p>{{ $parrain->etudiant->email ?? 'Non défini' }}</p>
                <p>{{ $parrain->etudiant->phone ?? 'Non défini' }}</p>
                <p>{{ $parrain->etudiant->matricule ?? 'Non défini' }}</p>
                <p>{{ $parrain->etudiant->option->nom ?? 'Non défini' }}</p>
            </div>
        </div>
    </div>
@elseif($filleuls && $parrain === null)
    <!-- Afficher les filleuls si l'utilisateur est un parrain -->
    <div class="max-w-md mx-auto bg-white shadow-lg rounded-lg p-6">
        <h2 class="text-xl font-semibold mb-4">Mes Filleuls</h2>
        @foreach($filleuls as $filleul)
            <div class="flex items-center mb-4">
                <img src="{{ $filleul->etudiant->image ?? 'https://via.placeholder.com/64' }}" alt="Filleul" class="h-16 w-16 rounded-full mr-4 object-cover">
                <div>
                    <h3 class="font-bold">{{ $filleul->etudiant->prenom }} {{ $filleul->etudiant->nom }}</h3>
                    <p>{{ $filleul->etudiant->email }}</p>
                    <p>{{ $filleul->etudiant->phone }}</p>
                    <p>{{ $filleul->etudiant->matricule }}</p>
                    <p>{{ $filleul->etudiant->option->nom ?? 'Non défini' }}</p>
                </div>
            </div>
        @endforeach
    </div>
    @elseif($filleuls=== null && $parrain === null)
    <!-- Afficher les filleuls si l'utilisateur est un parrain -->
    <div class="max-w-md mx-auto bg-white shadow-lg rounded-lg p-6">
        <h2 class="text-xl font-semibold mb-4">Parrain/Filleul</h2>
            <div class="flex items-center mb-4">
                <img src="{{  'https://via.placeholder.com/64' }}" alt="Filleul" class="h-16 w-16 rounded-full mr-4 object-cover">
                <div>
                    <h3 class="font-bold">{{ 'Non défini' }} {{  'Non défini' }}</h3>
                    <p>{{  'Non défini' }}</p>
                    <p>{{ 'Non défini' }}</p>
                    <p>{{ 'Non défini' }}</p>
                    <p>{{ 'Non défini' }}</p>
                </div>
            </div>
    </div>
@endif

@endsection
