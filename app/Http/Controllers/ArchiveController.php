<?php

namespace App\Http\Controllers;

use App\Models\Article;
use App\Models\Category;
use Illuminate\View\View;
use Illuminate\Http\Request;
use App\Models\ReadingHistory;

class ArchiveController extends Controller
{
    public function index(Request $request): View
    {
        $search = $request->search;
        $category = $request->category;

        $articles = Article::when($search, function ($query) use ($search) {
            $query->where('title', 'like', "%{$search}%")
                ->orWhereHas('category', function ($q) use ($search) {
                    $q->where('name', 'like', "%{$search}%");
                });
        })
            ->when($category, function ($query) use ($category) {
                $query->where('category_id', $category);
            })
            ->latest()
            ->paginate(9);

        $categories = Category::all();

        return view('archives.index', compact(
            'articles',
            'categories',
            'search',
            'category'
        ));
    }

    public function show(Article $article)
    {
        if (auth()->check()) {

            $history = ReadingHistory::firstOrCreate(
                [
                    'user_id' => auth()->id(),
                    'article_id' => $article->id,
                ],
                [
                    'read_count' => 1,
                ]
            );

            if (!$history->wasRecentlyCreated) {
                $history->increment('read_count');
            }

            $history->touch();
        }

        $article->load([
            'category',
            'comments.user'
        ]);

        return view('archives.show', compact('article'));
    }
}
