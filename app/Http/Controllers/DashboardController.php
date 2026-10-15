<?php

namespace App\Http\Controllers;

use Illuminate\View\View;
use App\Models\Article;
use App\Models\Category;

class DashboardController extends Controller
{
    public function index(): View
    {
        return view('admin.dashboard', [
            'articleCount' => Article::count(),
            'categoryCount' => Category::count(),
        ]);
    }
}
