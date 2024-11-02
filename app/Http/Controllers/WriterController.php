<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Writer as WriterModel;
use App\Models\mspost as PostModel;

class WriterController extends Controller
{
    //
    public function index(){
        $writers = WriterModel::select('name', 'specialist', 'id')->distinct()->get();
        return view('masterwriter.writer', compact('writers'));
    }

    public function writerid($id){
        $writers = WriterModel::with('mspost')->find($id);
        return view('masterwriter.writerpost', compact('writers'));
    }
}
