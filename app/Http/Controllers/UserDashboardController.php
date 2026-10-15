<?php

namespace App\Http\Controllers;

use Illuminate\View\View;

class UserDashboardController extends Controller
{
    public function index(): View
    {
        $readingHistories = auth()->user()
            ->readingHistories()
            ->with('article.category')
            ->latest('updated_at')
            ->get();

        $mostRead = auth()->user()
            ->readingHistories()
            ->with('article.category')
            ->orderByDesc('read_count')
            ->latest('updated_at')
            ->take(5)
            ->get();

        $rank = \App\Models\User::withCount('readingHistories')
            ->orderByDesc('reading_histories_count')
            ->get()
            ->search(function ($user) {
                return $user->id === auth()->id();
            }) + 1;

        return view('dashboard', compact(
            'readingHistories',
            'mostRead',
            'rank'
        ));
    }
}
