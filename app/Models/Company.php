<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Company extends Model
{
    use HasFactory;

    /**
     * The attributes that aren't mass assignable.
     *
     * @var array
     */
    protected $guarded = [];

    public function transactions()
    {
        return $this->hasMany(Transaction::class, 'stock_symbol', 'symbol');
    }

    public function analytics()
    {
        return $this->hasOne(Analytics::class, 'company_id');
    }
}
