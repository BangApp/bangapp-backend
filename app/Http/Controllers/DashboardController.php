<?php

namespace App\Http\Controllers;

use App\Flutterwave;
use App\Subscription;
use App\User;
use App\Withdrawal;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class DashboardController extends Controller
{

    public function stats(Request $request)
    {
        // Get the year from the query parameter or default to the current year
        $year = $request->query('year', now()->year); // Default to current year if no 'year' is provided
        $half = $request->query('half', 'first'); // Get the 'half' query parameter ('first' or 'second')

        // Determine the month range for the selected half of the year
        $monthsRange = $half === 'first' ? [1, 6] : [7, 12];

        // Calculate stats based on the filtered data
        $totalUsers = User::whereYear('created_at', $year)
            ->whereBetween(DB::raw('MONTH(created_at)'), $monthsRange)
            ->count();

        $totalDeposits = Flutterwave::whereYear('created_at', $year)
            ->whereBetween(DB::raw('MONTH(created_at)'), $monthsRange)
            ->sum('amount');

        $totalDepositsPass = Flutterwave::whereYear('created_at', $year)
            ->whereBetween(DB::raw('MONTH(created_at)'), $monthsRange)
            ->where('status', 'successful')
            ->sum('amount');

        $totalWithdrawals = Withdrawal::whereYear('created_at', $year)
            ->whereBetween(DB::raw('MONTH(created_at)'), $monthsRange)
            ->sum('amount');

        $totalWithdrawalFee = Withdrawal::whereYear('created_at', $year)
            ->whereBetween(DB::raw('MONTH(created_at)'), $monthsRange)
            ->sum('fee');

        $totalProfit = ($totalDeposits * 30) / 100;

        // Return the stats with both name and count
        return response()->json([
            ['name' => 'Total Users', 'count' => $totalUsers, 'is_not_money' => true, 'fail_count' => $totalUsers,],
            ['name' => 'Total Deposits', 'count' => $totalDeposits, 'fail_count' => $totalDeposits - $totalDepositsPass],
            ['name' => 'Total Withdrawals', 'count' => $totalWithdrawals, 'fail_count' => $totalUsers],
            ['name' => 'Total Withdrawal Fees', 'count' => $totalWithdrawalFee, 'fail_count' => $totalUsers],
            ['name' => 'Total Profit', 'count' => $totalProfit - $totalWithdrawalFee, 'fail_count' => $totalUsers],
        ]);
    }


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

        // Prepare data for the revenue chart and deposit/withdraw variation chart
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
                'totalDeposits' => $totalDeposits,
                'totalWithdrawals' => $totalWithdrawals,
                'depositWithdrawVariation' => $totalDeposits - $totalWithdrawals, // Variation between deposit and withdrawal
            ];
        })->values();

        // Return both the revenue data and deposit/withdraw variation data
        return response()->json([
            'revenueData' => $monthlyData->map(function ($data) {
                return [
                    'month' => $data['month'],
                    'totalRevenue' => $data['totalRevenue'],
                    'platformShare' => $data['platformShare'],
                    'celebrityShare' => $data['celebrityShare'],
                ];
            }),
            'depositWithdrawData' => $monthlyData->map(function ($data) {
                return [
                    'month' => $data['month'],
                    'totalDeposits' => $data['totalDeposits'],
                    'totalWithdrawals' => $data['totalWithdrawals'],
                    'depositWithdrawVariation' => $data['depositWithdrawVariation'],
                ];
            })
        ]);
    }

    public function subscribe_trend(Request $request)
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

        // Prepare data for the subscription count chart
        $monthlyData = $monthsFiltered->map(function ($monthNumber, $monthName) use ($year) {
            // Count the number of subscriptions for the given month
            $totalSubscriptions = Subscription::whereYear('created_at', $year)
                ->whereMonth('created_at', $monthNumber)
                ->count(); // Count subscriptions instead of summing the amount

            return [
                'month' => $monthName,
                'totalSubscriptions' => $totalSubscriptions, // Subscription count
            ];
        })->values();

        // Return subscription count data
        return response()->json([
            'subscriptionData' => $monthlyData
        ]);
    }

    public function user_leaderboard(Request $request)
    {
        $year = $request->query('year', now()->year); // Default to current year if no 'year' is provided
        $half = $request->query('half', 'first'); // Get the 'half' query parameter ('first' or 'second')

        // Determine the month range for the selected half of the year
        $monthsRange = $half === 'first' ? [1, 6] : [7, 12];

        // Fetch top 10 celebrities based on subscription count
        $topCelebrities = Subscription::select('subscription_id', DB::raw('COUNT(*) as total_subscriptions'))
            ->whereYear('created_at', $year)
            ->whereMonth('created_at', '>=', $monthsRange[0])
            ->whereMonth('created_at', '<=', $monthsRange[1])
            ->groupBy('subscription_id')
            ->orderByDesc('total_subscriptions')
            ->limit(10)
            ->get();

        // Prepare the data for the graph
        $leaderboardData = $topCelebrities->map(function ($subscription) {
            // Fetch the celebrity name (assuming you have a relationship or method to get the name)
            $celebrityName = Celebrity::find($subscription->subscription_id)->name ?? 'Unknown Celebrity';

            // Calculate average subscription amount
            $totalRevenue = Subscription::where('subscription_id', $subscription->subscription_id)
                ->sum('amount');
            $averageSubscriptionAmount = $subscription->total_subscriptions > 0
                ? $totalRevenue / $subscription->total_subscriptions
                : 0;

            return [
                'celebrity' => $celebrityName,
                'totalRevenue' => $totalRevenue,
                'subscribers' => $subscription->total_subscriptions,
                'averageSubscriptionAmount' => $averageSubscriptionAmount,
            ];
        });

        return response()->json($leaderboardData);
    }
}
