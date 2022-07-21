<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class employees extends Model
{
    use HasFactory;

    protected $table = 'employees';
    protected $guarded = [];

    public function company()
    {
        return $this->belongsTo(companies::class, 'companies_id');
    }
}
