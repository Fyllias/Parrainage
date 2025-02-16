@extends('layouts.auth')


@section('content')
    <!-- 
    Sous-titre -->
    <div class="text-center font-['Poppins-Regular',_sans-serif] text-xs font-normal">
        Enregistrez vos informations
    </div>

    <form action="{{ route('authinfo.submit') }}" method="POST" enctype="multipart/form-data" class="bg-white shadow-md rounded px-8 pt-6 pb-8 mb-4 mx-auto w-full max-w-md">
    @csrf
        <div class="flex justify-center mb-4">
            <!-- Avatar Container -->
            <div class="w-24 h-24 rounded-full bg-gray-200 flex items-center justify-center relative">
                <!-- Image Preview -->
                <img id="image-preview" src="" class=" w-full h-full rounded-full object-cover" alt="Preview">
                
            </div>
        </div>

        <!-- Upload Button -->
        <div class="text-center">
            <input name="image" class="bg-[#548CA8] hover:bg-gray-700 shadow appearance-none border rounded w-full py-2 px-3 font-bold text-white  focus:outline-none focus:shadow-outline" type="file" id="image-picker" accept="image/*" class="hidden" />
        </div>

        <div class="mt-10 grid grid-cols-1 gap-x-6 gap-y-8 grid-cols-6">
            
                <div class="mb-4 col-span-3">
                    <input type="text" name="first-name" id="first-name" autocomplete="given-name" class="bg-gray-100 placeholder-black shadow appearance-none border rounded w-full py-2 px-3 text-black leading-tight focus:outline-none focus:shadow-outline" placeholder="Prénom" required>
                </div>

                <div class="mb-4 col-span-3">
                    <input type="text" name="last-name" id="last-name" autocomplete="family-name" class="bg-gray-100 placeholder-black shadow appearance-none border rounded w-full py-2 px-3 text-black leading-tight focus:outline-none focus:shadow-outline" placeholder="Nom de famille" required>
                </div>

        </div>
        <div class="mb-4">
                <input class="bg-gray-100 placeholder-black shadow appearance-none border rounded w-full py-2 px-3 text-black leading-tight focus:outline-none focus:shadow-outline" type="text" id="matricule" name="matricule" placeholder="Matricule" required>
        </div>
        <div class="mb-4">
            <select id="filiere" name="filiere" class="bg-gray-100 placeholder-black shadow appearance-none border rounded w-full py-2 px-3 text-black leading-tight focus:outline-none focus:shadow-outline">
                <option selected value="0">Choisir votre option</option>
                @foreach($options as $option)
                    <option value="{{ $option->id }}">{{ $option->nom }}</option>
                @endforeach
            </select>
        </div>
        
        <div class="mb-4 flex items-center">
            <div  class="flex-shrink-0 z-10 inline-flex items-center py-2 px-3 text-center text-gray-500 bg-gray-100">
            +237
            </div>
            
            <div class="relative w-full">
                <input type="text" name="phone" id="phone" class="block w-full py-2 px-3 z-20 text-black bg-gray-100 placeholder-black" pattern="[0-9]{3}-[0-9]{3}-[0-9]{3}" placeholder="Numéro (ex. 694-828-353)" required />
            </div>
        </div>
        @if ($errors->any())
        <div class="text-red-500">
            <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
        @endif

        <div class="md-4">
            <button class="bg-[#548CA8] hover:bg-gray-700 shadow appearance-none border rounded w-full py-2 px-3 font-bold text-white  focus:outline-none focus:shadow-outline" type="submit">
                    Continuer
            </button>
        </div>
    </form>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<script type="text/javascript">

$(document).ready(function (e) {


   $('#image-picker').change(function(){

    let reader = new FileReader();

    reader.onload = (e) => {

      $('#image-preview').attr('src', e.target.result);
    }

    reader.readAsDataURL(this.files[0]);

   });

});

</script>
@endsection
