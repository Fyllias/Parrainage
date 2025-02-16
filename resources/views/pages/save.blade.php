@extends('layouts.header')

@section('content')
        <div class="max-w-md mx-auto bg-white shadow-lg rounded-lg p-6 mb-6">
            <h2 class="text-xl font-semibold mb-4">Mon Profil</h2>
            <div class="flex items-center mb-4">
                <img src="{{ asset(Auth::user()->image ?? 'favicon.png') }}" alt="Profil" class="h-16 w-16 rounded-full mr-4">
                <div>
                    <h3 class="font-bold">{{ Auth::user()->prenom }} {{ Auth::user()->nom }}</h3>
                    <p>{{ Auth::user()->email }}</p>
                    <p>{{ Auth::user()->phone }}</p>
                    <p>{{ Auth::user()->matricule }}</p>
                    <p>{{ Auth::user()->option->nom}}</p>
                </div>
            </div>
            <button class="bg-[#548CA8] hover:bg-gray-700 shadow appearance-none border rounded w-full py-2 px-3 font-bold text-white  focus:outline-none focus:shadow-outline">Télécharger mon certificat</button>
        </div>

        <div class="max-w-md mx-auto bg-white shadow-lg rounded-lg p-6">
            <h2 class="text-xl font-semibold mb-4">Mon Parrain/Filleul</h2>
            <div class="flex items-center mb-4">
                <img src="https://via.placeholder.com/64" alt="Parrain/Filleul" class="h-16 w-16 rounded-full mr-4">
                <div>
                    <h3 class="font-bold">?</h3>
                    <p>?</p>
                    <p>?</p>
                    <p>?</p>
                    <p>?</p>
                </div>
            </div>
            <button class="bg-[#548CA8] hover:bg-gray-700 shadow appearance-none border rounded w-full py-2 px-3 font-bold text-white  focus:outline-none focus:shadow-outline">Contacter</button>
        </div>
@endsection