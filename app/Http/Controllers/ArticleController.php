<?php

namespace App\Http\Controllers; 
  
use App\Models\Article;
use App\Models\Category;
use Illuminate\View\View; 
use Illuminate\Http\RedirectResponse; 
use Illuminate\Http\Request; 
  
class ArticleController extends Controller 
{
    public function index(Request $request): View
    {
        $search = $request->search;

        $articles = Article::with('category')
    ->when($search, function ($query) use ($search) {

        $query->where('title', 'like', "%{$search}%")
              ->orWhere('description', 'like', "%{$search}%")
              ->orWhereHas('category', function ($q) use ($search) {
                    $q->where('name', 'like', "%{$search}%");
              });

    })
    ->latest()
    ->paginate(10);

        return view('articles.index', compact('articles', 'search'));
    }
  
    public function create(): View 
    { 
        $categories = Category::all(); 
        return view('articles.create', compact('categories')); 
    } 
  
    public function store(Request $request): RedirectResponse 
    { 
        //validate form 
        $request->validate([ 
            'image'          => 'required|image|mimes:jpeg,jpg,png|max:2048', 
            'title'          => 'required|max:255', 
            'description'    => 'required', 
            'category_id'    => 'required|exists:categories,id' 
        ]); 
  
        //upload image 
        $image = $request->file('image'); 
        $image->storeAs('articles', $image->hashName()); 
  
        //create article 
        Article::create([ 
            'image'       => $image->hashName(), 
            'title'       => $request->title, 
            'description' => $request->description, 
            'category_id' => $request->category_id,
        ]);

        //redirect to index
        return redirect()->route('articles.index')
            ->with(['success' => 'Data Berhasil Disimpan!']);
    }

    public function edit(Article $article): View
    {
        $categories = Category::all();

        return view('articles.edit', compact('article', 'categories'));
    }

    public function update(Request $request, Article $article): RedirectResponse
    {
        $request->validate([
            'title' => 'required|max:255',
            'description' => 'required',
            'category_id' => 'required|exists:categories,id',
        ]);

        if ($request->hasFile('image')) {

            $image = $request->file('image');
            $image->storeAs('articles', $image->hashName());

            $article->update([
                'image' => $image->hashName(),
                'title' => $request->title,
                'description' => $request->description,
                'category_id' => $request->category_id,
            ]);
        } else {

            $article->update([
                'title' => $request->title,
                'description' => $request->description,
                'category_id' => $request->category_id,
            ]);
        }

        return redirect()->route('articles.index')
            ->with('success', 'Article berhasil diupdate!');
    }

    public function destroy(Article $article): RedirectResponse
    {
        $article->delete();

        return redirect()->route('articles.index')
            ->with('success', 'Article berhasil dihapus!');
    }
}