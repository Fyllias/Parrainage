<?php

namespace App\Events;

use Illuminate\Broadcasting\InteractsWithSockets;
use Illuminate\Broadcasting\Channel;
use Illuminate\Broadcasting\PrivateChannel;
use Illuminate\Contracts\Broadcasting\ShouldBroadcast;
use Illuminate\Queue\SerializesModels;

class AttributionProgress implements ShouldBroadcast
{
    use InteractsWithSockets, SerializesModels;

    public $currentProgress;
    public $totalFilleuls;

    /**
     * Créez une nouvelle instance de l'événement.
     *
     * @param int $currentProgress
     * @param int $totalFilleuls
     * @return void
     */
    public function __construct($currentProgress, $totalFilleuls)
    {
        $this->currentProgress = $currentProgress;
        $this->totalFilleuls = $totalFilleuls;
    }

    /**
     * Diffuser l'événement.
     *
     * @return \Illuminate\Broadcasting\Channel
     */
    public function broadcastOn()
    {
        return new Channel('attribution-progress');
    }
}
