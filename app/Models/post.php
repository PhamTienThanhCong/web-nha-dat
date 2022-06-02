<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class post extends Model
{
    use HasFactory;
    protected $fillable = [
        'admins_id',
        'title',
        'price',
        'price_type',
        'size',
        'address',
        'description1',
        'description2',
        'type',
        'done',
    ];
}
