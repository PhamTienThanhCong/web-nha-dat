<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class type_post extends Model
{
    use HasFactory;
    public $timestamps = false;
    protected $fillable = [
        'link_name',
        'link',
    ];
}
