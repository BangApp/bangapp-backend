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
        $totalDeposits = Flutterwave::sum('amount'); // Assuming you have a Deposit model
        $totalWithdrawals = Withdrawal::sum('amount'); // Assuming you have a Withdrawal model
        $totalProfit = ($totalDeposits  * 30) / 100;

        // Return the stats with both name and count
        return response()->json([
            ['name' => 'Total User', 'count' => $totalUsers, 'is_not_money' => true],
            ['name' => 'Total Deposit', 'count' => $totalDeposits],
            ['name' => 'Total Withdraw', 'count' => $totalWithdrawals],
            ['name' => 'Total Profit', 'count' => $totalProfit],
        ]);
    }

//    public function revenue_trend()
//    {
//        // Simulate data for 12 months
//        $months = [
//            "January" => 1, "February" => 2, "March" => 3, "April" => 4, "May" => 5, "June" => 6,
//            "July" => 7, "August" => 8, "September" => 9, "October" => 10, "November" => 11, "December" => 12
//        ];
//
//        $year = now()->year; // Get the current year
//
//        $monthlyData = collect($months)->map(function ($monthNumber, $monthName) use ($year) {
//            $totalDeposits = Flutterwave::whereYear('created_at', $year)
//                ->whereMonth('created_at', $monthNumber)
//                ->sum('amount');
//
//            $totalWithdrawals = Withdrawal::whereYear('created_at', $year)
//                ->whereMonth('created_at', $monthNumber)
//                ->sum('amount');
//
//            $totalProfit = ($totalDeposits * 30) / 100; // 30% profit
//
//            return [
//                'month' => $monthName,
//                'totalRevenue' => $totalDeposits,
//                'platformShare' => $totalProfit,
//                'celebrityShare' => $totalDeposits - $totalProfit,
//            ];
//        });
//
//        return response()->json($monthlyData);
//    }



    public function revenue_trend(Request $request)
    {
        // Simulate data for 12 months
        $months = [
            "January" => 1, "February" => 2, "March" => 3, "April" => 4, "May" => 5, "June" => 6,
            "July" => 7, "August" => 8, "September" => 9, "October" => 10, "November" => 11, "December" => 12
        ];

        // Get the year from the query parameter or default to the current year
        $year = $request->query('year', now()->year); // Default to current year if no 'year' is provided
        $half = $request->query('half', 'first'); // Get the 'half' query parameter ('first' or 'second')

        // Filter months based on the selected half of the year
        $monthsFiltered = $half === 'first'
            ? collect($months)->slice(0, 6) // First half (January to June)
            : collect($months)->slice(6, 6); // Second half (July to December)

        $monthlyData = $monthsFiltered->map(function ($monthNumber, $monthName) use ($year) {
            $totalDeposits = Flutterwave::whereYear('created_at', $year)
                ->whereMonth('created_at', $monthNumber)
                ->sum('amount');

            $totalWithdrawals = Withdrawal::whereYear('created_at', $year)
                ->whereMonth('created_at', $monthNumber)
                ->sum('amount');

            $totalProfit = ($totalDeposits * 30) / 100; // 30% profit

            return [
                'month' => $monthName,
                'totalRevenue' => $totalDeposits,
                'platformShare' => $totalProfit,
                'celebrityShare' => $totalDeposits - $totalProfit,
            ];
        })->values();

        return response()->json($monthlyData);
    }
}
