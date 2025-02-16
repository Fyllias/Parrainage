<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>@yield('title', 'Authentification')</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="flex item-center justify-center h-screen flex-col">
    <!-- Titre -->
    <div class = "text-center font-['Poppins-Bold',_sans-serif] text-2xl font-bold">
        Bienvenu au parrainage ENSPD 
        <div>2024 - 2025</div>
    </div>

    <!-- Content -->
    <div class="px-8 pt-6 pb-8">
        @yield('content')
    </div>

    <footer>
    <p class="text-center text-gray-500 text-xs">
    &copy;2024 ENSPD-GIT Tous droits reservés.
</p>
    </footer>
</body>
</html>


