<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class companies extends Model
{
    protected $guarded = [];
    protected $table = 'companies';

    public function employees()
    {
        return $this->hasMany(employees::class);
    }
}
