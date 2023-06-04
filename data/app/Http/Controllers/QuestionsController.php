<?php

namespace App\Http\Controllers;

use App\Models\questions;
use Illuminate\Http\Request;

class QuestionsController extends Controller
{

    public function index()
    {

        $questions = questions::select('question', 'serie', 'answer', 'image','option1','option2','option3')->get();
        return response()->json([
            'questions' => $questions
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

   
    public function show(questions $questions)
    {
        return response()->json([
            'questions' => $questions
        ]);
    }

   
    public function update(Request $request, questions $questions)
    {
        //
    }

    
    public function destroy(questions $questions)
    {
        //
    }
}
