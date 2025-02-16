<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class AttributionMail extends Mailable
{
    use Queueable, SerializesModels;

    public $details;
    public $type; // 'parrain' ou 'filleul'

    /**
     * Créez une nouvelle instance de message.
     *
     * @param array $details
     * @param string $type
     * @return void
     */
    public function __construct($details, $type)
    {
        $this->details = $details;
        $this->type = $type;
    }

    /**
     * Construire le message.
     *
     * @return $this
     */
    public function build()
    {
        // Choisir l'objet du mail en fonction du type
        $subject = $this->type === 'parrain' ? 'Vous avez un nouveau filleul' : 'Vous avez un nouveau parrain';

        return $this->from('parrainagegit2024@mcsarl.cm')
                    ->subject($subject)
                    ->view('emails.attribution')
                    ->with('details', $this->details)
                    ->with('type', $this->type);
    }
}
