<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Support\Facades\Log;

class LogHttpRequest
{
    public function handle($request, Closure $next)
    {
        Log::info('HTTP Request', [
            'method' => $request->method(),
            'url' => $request->fullUrl(),
            'headers' => $request->headers->all(),
            'body' => $request->all(),
        ]);

        return $next($request);
    }
}
