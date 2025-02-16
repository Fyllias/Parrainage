<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Parrain extends Model
{
    use HasFactory;

    protected $fillable = ['id_etudiant'];

    public $timestamps = false; // Désactive les timestamps

    // L'étudiant associé au parrain
    public function etudiant()
    {
        return $this->belongsTo(Etudiant::class, 'id_etudiant');
    }

    // Les filleuls du parrain
    public function filleuls()
    {
        return $this->hasMany(Filleul::class, 'id_parrain');
    }
}

