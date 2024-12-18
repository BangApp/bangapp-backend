<?php

namespace App\Http\Controllers;

use App\Flutterwave;
use App\Withdrawal;
use Illuminate\Http\Request;

class WithdrawController extends Controller
{
    public function index(Request $request)
    {
        $keyword = $request->input('keyword');

        // Fetch all users sorted by name
        $withdraws = Withdrawal::latest()->get();

        foreach ($withdraws as $withdraw) {
            $withdraw->append(['user_name']);
        }

        return response()->json($withdraws);
    }
}
