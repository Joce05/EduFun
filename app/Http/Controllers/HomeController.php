<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\mspost as PostModel;
use App\Models\Writer as WriterModel;

class HomeController extends Controller
{
    //
    public function index(){
        $post = PostModel::all();
        $writer = WriterModel::all();
        return view('home', compact('post'));
    }
}
