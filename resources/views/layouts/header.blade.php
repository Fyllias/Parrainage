<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>@yield('title', 'Parrainage')</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/alpinejs@3.13.0/dist/cdn.min.js" defer></script>
</head>
<body class="h-screen">

<nav class="bg-[#548CA8] shadow">
        <div class="max-w-7xl mx-auto px-2 ">
            <div class="relative flex items-center justify-between h-16">
                <div class="flex items-center">
                    <img src="favicon.png" alt="Logo" class="h-8 w-8 mr-2">
                    <span class="text-xl font-bold text-white">Parrainage 2024</span>
                </div>
                <div class="hidden sm:block sm:ml-6">
                    <div class="flex space-x-4">
                        <a href="#" class="text-white hover:bg-white hover:text-[#548CA8] px-3 py-2 rounded-md text-sm font-medium">Accueil</a>
                        <a href="#" class="text-white hover:bg-white hover:text-[#548CA8] px-3 py-2 rounded-md text-sm font-medium">Profil</a>
                        <a href="/logout" class="text-white hover:bg-white hover:text-[#548CA8] px-3 py-2 rounded-md text-sm font-medium">Déconnexion</a>
                    </div>
                </div>
                <div class="inset-y-0 left-0 flex items-center sm:hidden">
                    <!-- Menu button -->
                    <button id="menu-toggle" class="inline-flex items-center justify-center p-2 text-white hover:bg-white hover:text-[#548CA8] focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-offset-gray-800 focus:ring-white" aria-controls="mobile-menu" aria-expanded="false">
                        <span class="sr-only">Ouvrir le menu</span>
                        <svg class="block h-6 w-6" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" aria-hidden="true">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16m-7 6h7" />
                        </svg>
                        <svg class="hidden h-6 w-6" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" aria-hidden="true">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12" />
                        </svg>
                    </button>
                </div>
            </div>
        </div>
    </nav>

    <div class="sm:hidden hidden" id="mobile-menu">
        <div class="px-2 pt-2 pb-3 space-y-1">
            <a href="#" class="text-white bg-[#548CA8] hover:bg-white hover:text-[#548CA8] block px-3 py-2 rounded-md text-base font-medium">Accueil</a>
            <a href="#" class="text-white bg-[#548CA8] hover:bg-white hover:text-[#548CA8] block px-3 py-2 rounded-md text-base font-medium">Profil</a>
            <a href="/logout" class="text-white bg-[#548CA8] hover:bg-white hover:text-[#548CA8] block px-3 py-2 rounded-md text-base font-medium">Déconnexion</a>
        </div>
    </div>

    <div class="flex item-center justify-start h-screen flex-col" >
        <!-- Content -->
        <div >
        @yield('content')
        </div>
        @extends('layouts.footer')
     </div>

     <script>
        $(document).ready(function(){
            $('#menu-toggle').click(function(){
                $('#mobile-menu').toggleClass('hidden');
            });
        });
    </script>
</body>
</html>


