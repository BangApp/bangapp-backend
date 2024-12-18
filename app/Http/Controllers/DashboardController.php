<?php

namespace App\Http\Controllers;

use App\Flutterwave;
use App\User;
use App\friends;
use App\FriendRequest;
use App\Withdrawal;
use Illuminate\Http\Request;

class DashboardController extends Controller
{
    public function stats(){
        $totalUsers = User::count();
        $totalDeposits = Flutterwave::count(); // Assuming you have a Deposit model
        $totalWithdrawals = Withdrawal::count(); // Assuming you have a Withdrawal model
        $totalProfit = ($totalDeposits  / 30) * 1000;

        // Return the stats with both name and count
        return response()->json([
            ['name' => 'Total User', 'count' => $totalUsers],
            ['name' => 'Total Deposit', 'count' => $totalDeposits],
            ['name' => 'Total Withdraw', 'count' => $totalWithdrawals],
            ['name' => 'Total Profit', 'count' => $totalProfit],
        ]);
    }



}
