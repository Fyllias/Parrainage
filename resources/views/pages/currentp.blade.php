@extends('layouts.header')

@section('content')
    <div class="max-w-4xl mx-auto bg-white shadow-lg rounded-lg p-6 text-center">
        <h1 class="font-bold text-2xl mb-4 text-[#548CA8]">Présentation des parrains et filleuls GIT</h1>
        <div class="flex justify-around items-center mb-6">
            <div class="flex flex-col items-center">
                <img src="https://via.placeholder.com/150" alt="Parrain" class="h-32 w-32 rounded-full mb-2">
                <p class="font-semibold">Mary Jane Pauline</p>
            </div>
            <div class="font-bold text-2xl">&</div>
            <div class="flex flex-col items-center">
                <img src="https://via.placeholder.com/150" alt="Filleule" class="h-32 w-32 rounded-full mb-2">
                <p class="font-semibold">Mary Jane Pauline</p>
            </div>
        </div>
        <button class="bg-[#548CA8] hover:bg-gray-700 text-white py-2 px-4 rounded font-bold">Suivant</button>
        <!-- Tableau des parrains et filleuls -->
        <div class="mt-8">
            <h2 class="font-bold text-xl mb-4 text-[#548CA8] ">Liste des Parrains et Filleuls</h2>
            <table class="min-w-full bg-white border border-gray-300">
                <thead>
                    <tr>
                        <th class="py-2 px-4 border-b">Filleul</th>
                        <th class="py-2 px-4 border-b">Parrain</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td class="py-2 px-4 border-b">Mary Jane Pauline</td>
                        <td class="py-2 px-4 border-b">Mary Jane Pauline</td>
                    </tr>
                    <tr>
                        <td class="py-2 px-4 border-b">Mary Jane Pauline</td>
                        <td class="py-2 px-4 border-b">Mary Jane Pauline</td>
                    </tr>
                    <tr>
                        <td class="py-2 px-4 border-b">Mary Jane Pauline</td>
                        <td class="py-2 px-4 border-b">Mary Jane Pauline</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
@endsection