<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Attribution de parrainage</title>
</head>
<body style="font-family: Arial, sans-serif; color: #333;">
    <h1 style="text-align: center;">Attribution de Parrainage</h1>

    @if($type == 'parrain')
        <p>Bonjour {{ $details['parrain']['prenom'] }} {{ $details['parrain']['nom'] }},</p>
        <p>Félicitations ! Vous avez été attribué en tant que parrain de {{ $details['filleul']['prenom'] }} {{ $details['filleul']['nom'] }}.</p>
        <p><strong>Filleul :</strong></p>
        <p>
            Nom : {{ $details['filleul']['prenom'] }} {{ $details['filleul']['nom'] }}<br>
            Email : {{ $details['filleul']['email'] }}<br>
            Téléphone : {{ $details['filleul']['phone'] }}<br>
            Option : {{ $details['filleul']['option'] }}<br>
            <img src="{{ $details['filleul']['photo'] }}" alt="Photo" width="100">
        </p>
        <p><strong>Note :</strong> Le certificat pourra être téléchargé en ligne dès qu'il sera disponible.</p>
    @else
        <p>Bonjour {{ $details['filleul']['prenom'] }} {{ $details['filleul']['nom'] }},</p>
        <p>Félicitations ! Vous avez été attribué en tant que filleul de {{ $details['parrain']['prenom'] }} {{ $details['parrain']['nom'] }}.</p>
        <p><strong>Parrain :</strong></p>
        <p>
            Nom : {{ $details['parrain']['prenom'] }} {{ $details['parrain']['nom'] }}<br>
            Email : {{ $details['parrain']['email'] }}<br>
            Téléphone : {{ $details['parrain']['phone'] }}<br>
            Option : {{ $details['parrain']['option'] }}<br>
            <img src="{{ $details['parrain']['photo'] }}" alt="Photo" width="100">
        </p>
        <p><strong>Note :</strong> Le certificat pourra être téléchargé en ligne dès qu'il sera disponible.</p>
    @endif

    <p>Merci de faire partie de notre programme de mentorat.</p>
</body>
</html>
