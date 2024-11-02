<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\mspost as PostModel;
use App\Models\Writer as WriterModel;


class PopularController extends Controller
{
    //
    public function index(){
        $post = PostModel::with('Writer')->paginate(3);
        $writer = WriterModel::all();
        return view('popular', compact('post'));
    }

}
