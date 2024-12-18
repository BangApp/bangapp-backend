<?php

namespace App\Http\Controllers;

use App\Flutterwave;
use Illuminate\Http\Request;

class DepositController extends Controller
{
    public function index(Request $request)
    {
        $keyword = $request->input('keyword');

        // Fetch all users sorted by name
        $deposits = Flutterwave::latest()->get();

        return response()->json($deposits);
    }
}
