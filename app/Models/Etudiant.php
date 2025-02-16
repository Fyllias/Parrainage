<?php

namespace App\Models;

use Illuminate\Foundation\Auth\User as Authenticatable;

class Etudiant extends Authenticatable
{
    protected $fillable = [
        'nom', 'prenom', 'matricule', 'email', 'phone', 'password', 'id_option', 'image',
    ];

    protected $hidden = ['password', 'remember_token'];


    // Relation avec Option
    public function option()
    {
        return $this->belongsTo(Option::class, 'id_option');
    }

    // Relation pour le parrain
    public function parrain()
    {
        return $this->hasOne(Parrain::class, 'id_etudiant');
    }

    // Relation pour les filleuls
    public function filleuls()
    {
        return $this->hasMany(Filleul::class, 'id_parrain');
    }
}

