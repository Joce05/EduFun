<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Models\mspost as PostModel;

class mscategory extends Model
{
    //
    protected $table = 'mscategories';
    protected $guarded = [];

    public function mspost(){
        return $this->hasMany(mspost::class, 'categoryId');
    }

}
