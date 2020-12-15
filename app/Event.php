<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Event extends Model
{
    public function getDateAttribute($value)
    {
        return \Carbon\Carbon::parse($value)->format('d F Y');
    }
}
