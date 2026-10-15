@extends('layouts.app')

@section('title','Archives')

@section('content')

<div class="container py-5">

    <div class="text-center mb-5">

        <h1>Explore Archives</h1>
        <div class="mb-4">

            <a href="{{ route('archives.index') }}"
                class="btn btn-outline-dark btn-sm">
                All
            </a>

            @foreach($categories as $cat)
            <a href="{{ route('archives.index', ['category' => $cat->id]) }}"
                class="btn btn-outline-dark btn-sm">
                {{ $cat->name }}
            </a>
            @endforeach

        </div>

        <form action="{{ route('archives.index') }}" method="GET">

            <input
                type="hidden"
                name="category"
                value="{{ request('category') }}">

            <div class="input-group">

                <input
                    type="text"
                    name="search"
                    class="form-control"
                    placeholder="Search archive..."
                    value="{{ request('search') }}">

                <button class="btn btn-outline-dark">
                    Search
                </button>

            </div>

        </form>

        <p class="text-secondary mt-3">
            Browse every forgotten story preserved by VEIL.
        </p>

    </div>

    <div class="row">

        @forelse($articles as $article)

        <div class="col-lg-4 col-md-6 mb-4">

            <a href="{{ route('archives.show', $article) }}"
                class="text-decoration-none text-dark d-block">

                <div class="card h-100 shadow-sm archive-card">

                    <img src="{{ asset('storage/articles/'.$article->image) }}"
                        class="card-img-top"
                        style="height:220px; object-fit:cover;">

                    <div class="card-body">

                        <small class="text-secondary">
                            {!! str_ireplace(
                            request('search'),
                            '<mark>'.request('search').'</mark>',
                            e($article->category->name ?? '-')
                            ) !!}
                        </small>

                        <h5>{!! str_ireplace(
                            request('search'),
                            '<mark>'.request('search').'</mark>',
                            e($article->title)
                            ) !!}
                        </h5>

                        <p class="text-secondary">
                            {{ Str::limit($article->description,100) }}
                        </p>

                    </div>

                </div>

            </a>

        </div>

        @empty

        <div class="text-center py-5">
            <h3>📂</h3>
            <h4>No Archives Found</h4>
            <p class="text-secondary">
                Try another keyword or category.
            </p>
        </div>

        @endforelse

    </div>

    <div class="mt-4">

        {{ $articles->withQueryString()->links() }}

    </div>

</div>

@endsection