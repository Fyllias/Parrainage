@extends('layouts.auth')


@section('content')

<!-- Sous-titre -->
<div class="text-center font-['Poppins-Regular',_sans-serif] text-xs font-normal">
    Connectez-vous à votre compte
    @if(session('success'))
    <div 
        id="successModal"
        class="fixed inset-0 bg-gray-900 bg-opacity-50 flex items-center justify-center z-50">
        <div class="bg-white rounded-lg p-6 text-center shadow-lg">
            <h2 class="text-2xl font-bold text-green-600 mb-4">Réussie 🎉</h2>
            <p class="text-gray-600 mb-4">{{ session('success') }}</p>
            <button 
                id="closeModalButton" 
                class="px-4 py-2 bg-green-500 text-white rounded hover:bg-green-600 focus:outline-none">
                Fermer
            </button>
        </div>
    </div>

    <script>
        // Wait for the DOM to load
        document.addEventListener('DOMContentLoaded', function () {
            const modal = document.getElementById('successModal');
            const closeModalButton = document.getElementById('closeModalButton');

            // Add event listener to the close button
            closeModalButton.addEventListener('click', function () {
                modal.style.display = 'none'; // Hide the modal
            });
        });
    </script>
@endif

</div>
<form method="POST" action="{{ route('login.submit') }}" class="bg-white shadow-md rounded mx-auto w-full max-w-md px-8 pt-6 pb-8 mb-4">
        @csrf
    <div class="mb-4">
        <input class="bg-gray-100 shadow appearance-none border rounded w-full py-2 px-3 text-black leading-tight focus:outline-none focus:shadow-outline" id="email" name="email" type="email" placeholder="Email">
    </div>
    <div class="mb-4">
        <input class="bg-gray-100 shadow appearance-none border rounded w-full py-2 px-3 text-black leading-tight focus:outline-none focus:shadow-outline" id="password" name="password" type="password" placeholder="Mot de passe">
    </div>
    <div class="md-4">
    @if ($errors->any())
        <div class="text-red-500">
            <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
        @endif
      <button class="bg-[#548CA8] hover:bg-gray-700 shadow appearance-none border rounded w-full py-2 px-3 font-bold text-white  focus:outline-none focus:shadow-outline" type="submit">
            Se connecter
      </button>
    </div>
    
  </form>

    <div class="md-4  px-8 pt-6 pb-8">
        <button class="bg-gray-100 hover:bg-gray-700  text-[#548CA8] flex justify-center item-center hover:text-white shadow appearance-none border rounded mx-auto w-full max-w-md py-2 px-3 font-bold  focus:outline-none focus:shadow-outline" type="button">
            <svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" width="20" height="20" viewBox="0 0 48 48">
                <path fill="#fbc02d" d="M43.611,20.083H42V20H24v8h11.303c-1.649,4.657-6.08,8-11.303,8c-6.627,0-12-5.373-12-12	s5.373-12,12-12c3.059,0,5.842,1.154,7.961,3.039l5.657-5.657C34.046,6.053,29.268,4,24,4C12.955,4,4,12.955,4,24s8.955,20,20,20	s20-8.955,20-20C44,22.659,43.862,21.35,43.611,20.083z"></path><path fill="#e53935" d="M6.306,14.691l6.571,4.819C14.655,15.108,18.961,12,24,12c3.059,0,5.842,1.154,7.961,3.039	l5.657-5.657C34.046,6.053,29.268,4,24,4C16.318,4,9.656,8.337,6.306,14.691z"></path><path fill="#4caf50" d="M24,44c5.166,0,9.86-1.977,13.409-5.192l-6.19-5.238C29.211,35.091,26.715,36,24,36	c-5.202,0-9.619-3.317-11.283-7.946l-6.522,5.025C9.505,39.556,16.227,44,24,44z"></path><path fill="#1565c0" d="M43.611,20.083L43.595,20L42,20H24v8h11.303c-0.792,2.237-2.231,4.166-4.087,5.571	c0.001-0.001,0.002-0.001,0.003-0.002l6.19,5.238C36.971,39.205,44,34,44,24C44,22.659,43.862,21.35,43.611,20.083z"></path>
                
            </svg>
            <span>Continuer avec google</span>
        </button>
    </div>

    <div class="md-4  px-8 pt-6 pb-8">
        <a href="/authpcto" class="bg-[#548CA8] hover:bg-gray-700 shadow appearance-none border rounded flex justify-center item-center mx-auto w-full max-w-md py-2 px-3 font-bold text-white  focus:outline-none focus:shadow-outline" type="button">
            <svg class="fill-current w-6 h-6" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
            <path d="M12 12c2.21 0 4-1.79 4-4s-1.79-4-4-4-4 1.79-4 4 1.79 4 4 4zm0 2c-3.31 0-8 1.67-8 5v3h16v-3c0-3.33-4.69-5-8-5z"/>
            </svg>
                
            <span>Continuer comme PCTO</span>
        </a>
    </div>

</div>
@endsection
