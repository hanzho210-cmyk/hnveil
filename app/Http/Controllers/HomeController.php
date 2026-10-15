<?php

namespace App\Http\Controllers;

use App\Models\Article;
use App\Models\Category;

class HomeController extends Controller
{
    public function index()
    {
        $articles = Article::latest()->take(6)->get();

        $articlesCount = Article::count();
        $categoriesCount = Category::count();

        return view('home', compact(
            'articles',
            'articlesCount',
            'categoriesCount'
        ));

        return view('home', compact('articles'));
    }
}
