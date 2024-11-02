<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Models\mspost as PostModel;

class Writer extends Model
{
    //isi nama table, dan kolom yang bisa diisi
    protected $table = 'writers';
    protected $fillable = ['name', 'specialist'];

    public function mspost(){
        return $this->hasMany(mspost::class, 'userId');
    }

}
