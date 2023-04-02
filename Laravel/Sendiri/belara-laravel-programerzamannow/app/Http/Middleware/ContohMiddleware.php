<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

class ContohMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure(\Illuminate\Http\Request): (\Illuminate\Http\Response|\Illuminate\Http\RedirectResponse)  $next
     * @return \Illuminate\Http\Response|\Illuminate\Http\RedirectResponse
     */
    public function handle(Request $request, Closure $next, string $key, $status)
    {
        // di headernya harus ada X-API-KEY
        $apiKey = $request->header('X-API-KEY');
        // cek jika isi X-API-KEY harus sama dengan RWM
        // if ($apiKey == "RWM") {
        // dinamis
        if ($apiKey == $key) {
            return $next($request);
        } else {
            // return response('Access Denied', 401);
            // dinamis
            return response('Access Denied', $status);
        }
        // harus di registrasikan pada file Kernel.php di bagian middleware
    }
}
