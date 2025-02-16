@extends('layouts.header')

@section('content')
<div class="max-w-md mx-auto bg-white shadow-lg rounded-lg p-6 text-center">
    <h1 class="font-bold text-2xl mb-2">CTO - {{ $optionName }}</h1>
    <p class="text-gray-700 mb-4">
        Votre option comporte 
        <span class="font-semibold text-[#548CA8]">{{ $parrainsCount }} parrains</span> et 
        <span class="font-semibold text-[#548CA8]">{{ $filleulsCount }} filleuls</span>.
    </p>

    <!-- Barre de progression -->
    <div id="progress-container" class="w-full bg-gray-200 rounded-full h-4 mb-4">
        <div id="progress-bar" class="bg-[#548CA8] h-4 rounded-full" style="width: 0;"></div>
    </div>

    <a href="{{ route('manager.assign') }}" id="start-btn" class="bg-[#548CA8] hover:bg-gray-700 shadow appearance-none border rounded w-full py-2 px-3 font-bold text-white focus:outline-none focus:shadow-outline">
        Lancer l'attribution
    </a>

    <!-- Message de statut -->
    <div id="message-container"></div>
</div>

<script>
document.getElementById('start-btn').addEventListener('click', function() {
    // Désactiver le bouton pendant l'attribution
    this.disabled = true;
    document.getElementById('message-container').innerHTML = "<p>Attribution en cours...</p>";

});
</script>

@endsection
