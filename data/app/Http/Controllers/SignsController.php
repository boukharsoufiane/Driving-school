<?php

namespace App\Http\Controllers;

use App\Models\signs;
use Illuminate\Http\Request;

class SignsController extends Controller
{
   
    public function index()
    {
        $signs = signs::select('image','description')->get();
        return response()->json([
            'signs' => $signs
        ]);
    }

   
    public function create()
    {
        //
    }

    
    public function store(Request $request)
    {
        //
    }

    
    public function show(signs $signs)
    {
        return response()->json([
            'signs' => $signs
        ]);
    }

   
    public function update(Request $request, signs $signs)
    {
        //
    }

    
    public function destroy(signs $signs)
    {
        //
    }
}
