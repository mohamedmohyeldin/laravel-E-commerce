<?php

namespace App\Http\Middleware;

use Closure;
use App\Http\traits\generalTrait;

class checkAuth
{
    use generalTrait;
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        if(Auth('api')->check())
            return $next($request);
        return $this->returnError(401,"Unauthorized");

    }
}
