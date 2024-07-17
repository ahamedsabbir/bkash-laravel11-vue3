<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Transaction extends Model
{
    use HasFactory;
    protected $fillable = [
        'user_id',
        'email',
        'trxid',
        'amount',
        'description',
        'type',
        'status',
        'pin'
    ];
    public function user(): BelongsTo
    {
        return $this->belongsTo(User::class);
    }
}
