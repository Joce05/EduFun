<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\mspost as PostModel;
use App\Models\Writer as WriterModel;

class CategoryController extends Controller
{

    public function index($subject){
        $post = PostModel::with('mscategory')->where('categoryId', $subject)->get();
        $writer = WriterModel::all();
        return view('category', compact('post', 'subject'));
    }
}
