<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>@yield('title', 'Parrainage 2024')</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<style>
        body {
            background-image: url('campus_2.jpg'); 
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            
        }
        .overlay {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(255, 255, 255, 0.5); 
            filter: blur(1.5rem); 
            z-index: -1; 
        }
    </style>
<body class="bg-gray-100">
<div class="overlay"></div> <!-- Couche floue -->
    <header class="bg-[#548CA8] text-white py-6">
        <div class="max-w-4xl mx-auto text-center flex flex-col items-center">
            <img src="favicon.png" alt="logo">
            <h1 class="text-4xl font-bold">Parrainage 2024</h1>
            <p class="mt-2">Unissez-vous pour soutenir nos futurs leaders !</p>
        </div>
    </header>
    
    <main class="max-w-4xl mx-auto p-6">
        <section class="mt-8 bg-white shadow-lg rounded-lg p-6">
            <h2 class="text-2xl font-bold mb-4">Qu'est-ce que le parrainage ?</h2>
            <p class="mb-4">
                Le parrainage permet de créer un lien entre des étudiants de l'Ecole Nationale Superieur Polytechnique de Douala. Ce programme vise à accompagner les étudiants dans leur parcours académique et professionnel, en leur offrant des conseils, du soutien et un réseau.
            </p>
            <div class="flex justify-center mt-8">
            <a href="/register" class="bg-gray-500 hover:bg-gray-700 shadow appearance-none border rounded w-full py-2 px-3 font-bold text-white  focus:outline-none focus:shadow-outline">S'inscrire</a>
            <a href="/login" class="bg-[#548CA8] hover:bg-gray-700 shadow appearance-none border rounded w-full py-2 px-3 font-bold text-white  focus:outline-none focus:shadow-outline">Se connecter</a>
        </div>
        </section>

        <section class="mt-8 bg-white shadow-lg rounded-lg p-6">
            <h2 class="text-2xl font-bold mb-4">Rôle des parrains et des filleuls</h2>
            <div class="mb-4">
                <h3 class="font-semibold">Rôle des parrains :</h3>
                <ul class="list-disc list-inside">
                    <li>Offrir des conseils académiques et professionnels.</li>
                    <li>Partager des expériences et des opportunités de réseau.</li>
                    <li>Encourager et soutenir les étudiants dans leurs projets.</li>
                </ul>
            </div>
            <div>
                <h3 class="font-semibold">Rôle des filleuls :</h3>
                <ul class="list-disc list-inside">
                    <li>Être réceptif aux conseils et suggestions.</li>
                    <li>Participer activement aux échanges et aux activités.</li>
                    <li>Respecter les engagements pris avec leur parrain.</li>
                </ul>
            </div>
        </section>

        <section class="mt-8 bg-white shadow-lg rounded-lg p-6">
            <h2 class="text-2xl font-bold mb-4">Recommandations et interdictions</h2>
            <div class="mb-4">
                <h3 class="font-semibold">Recommandations :</h3>
                <ul class="list-disc list-inside">
                    <li>Communiquer régulièrement et de manière ouverte.</li>
                    <li>Fixer des objectifs clairs pour le parrainage.</li>
                    <li>Respecter la confidentialité des échanges.</li>
                </ul>
            </div>
            <div>
                <h3 class="font-semibold">Interdictions :</h3>
                <ul class="list-disc list-inside">
                    <li>Ne pas partager d'informations sensibles ou personnelles.</li>
                    <li>Éviter toute forme de favoritisme ou de discrimination.</li>
                    <li>Ne pas imposer de décisions ou de choix aux filleuls.</li>
                </ul>
            </div>
        </section>

        
    </main>

    <footer class="bg-[#548CA8] text-white py-4 mt-8">
        <div class="max-w-4xl mx-auto text-center">
            <p>&copy; 2024 ENSPD. Tous droits réservés.</p>
        </div>
    </footer>
</body>
</html>