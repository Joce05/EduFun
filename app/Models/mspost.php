<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Models\Writer;
use App\Models\mscategory;

class mspost extends Model
{
    //
    protected $table = 'msposts';
    protected $fillable = ['title', 'description', 'categoryId', 'userId'];

    public function Writer(){
        return $this->belongsTo(Writer::class, 'userId');
    }

    public function mscategory()
    {
        return $this->belongsTo(mscategory::class, 'categoryId');
    }

  
}
