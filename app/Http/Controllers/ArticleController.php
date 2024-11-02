<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\mspost as PostModel;

class ArticleController extends Controller
{
    //
    public function index($id){
        $post = PostModel::with('Writer')->find($id);
        return view('article', compact('post'));
    }
}
