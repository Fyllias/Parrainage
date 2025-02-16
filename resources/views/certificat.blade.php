<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Certificat de Parrainage</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            margin: 0;
            padding: 0;
        }
        .container {
            border: 5px solid #548CA8;
            padding: 40px;
            margin: 20px auto;
            width: 90%;
        }
        h1 {
            color: #548CA8;
            font-size: 40px;
            margin-bottom: 10px;
        }
        .content {
            font-size: 20px;
            line-height: 1.8;
            margin: 20px 0;
        }
        .footer {
            margin-top: 50px;
            font-size: 16px;
            color: gray;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>CERTIFICAT DE PARRAINAGE</h1>
        <p class="content">
            Nous certifions par la présente que <strong>{{ $etudiant->prenom }} {{ $etudiant->nom }}</strong>, matricule <strong>{{ $etudiant->matricule }}</strong>,
            inscrit(e) à l'option <strong>{{ $etudiant->option->nom }}</strong>, a été parrainé(e) par <strong>{{ $parrain->etudiant->prenom }} {{ $parrain->etudiant->nom }}</strong>
            au cours de l'année académique {{ $annee }}.
        </p>
        <div class="footer">
            <p>ECOLE NATIONALE SUPERIEUR POLYTECHNIQUE DE DOUALA</p>
        </div>
    </div>
</body>
</html>
