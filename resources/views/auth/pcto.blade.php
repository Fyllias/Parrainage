@extends('layouts.auth')


@section('content')

<!-- Sous-titre -->
<div class="text-center font-['Poppins-Regular',_sans-serif] text-xs font-normal">
    Connectez-vous comme PCTO
</div>

<form method="POST" action="{{ route('manager.authenticate') }}" class="bg-white shadow-md rounded px-8 pt-6 pb-8 mb-4 mx-auto w-full max-w-md">
@csrf
    <div class="mb-4">
        <input class="bg-gray-100 shadow appearance-none border rounded w-full py-2 px-3 text-black leading-tight focus:outline-none focus:shadow-outline" id="uniqueCode" name="uniqueCode" type="text" placeholder="Entrez votre code unique">
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

    </div>
@endsection
