<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Filleul extends Model
{
    use HasFactory;

    protected $fillable = ['id_etudiant', 'id_parrain'];

    public $timestamps = false; // Désactive les timestamps

    // L'étudiant qui est filleul
    public function etudiant()
    {
        return $this->belongsTo(Etudiant::class, 'id_etudiant');
    }

    // Le parrain du filleul
    public function parrain()
    {
        return $this->belongsTo(Parrain::class, 'id_parrain');
    }
}
