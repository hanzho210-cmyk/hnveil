@extends('layouts.app')

@section('title','VEIL')

@section('content')

<div class="container py-5">

    <div class="hero-section rounded-4 mb-5">

        <div class="hero-content text-center">

            <h1 class="display-3 fw-bold hero-logo">
                VEIL
            </h1>

            <h4 class="mb-4">
                What the World Left Behind
            </h4>

            <p class="lead mx-auto" style="max-width:700px;">
                A living archive preserving forgotten civilizations,
                mysterious creatures, lost places, and untold history.
            </p>

            <a href="{{ route('archives.index') }}"
                class="btn btn-dark btn-lg mt-3 px-4">
                Explore Archives
            </a>

            <div class="hero-stats">

                <div class="stat">
                    <h7>{{ $articlesCount }}</h7>
                    <small>Archives</small>
                </div>

                <div class="stat">
                    <h7>{{ $categoriesCount }}</h7>
                    <small>Categories</small>
                </div>

            </div>

        </div>

    </div>
    <h2 class="mb-4">Latest Archives</h2>

    <div class="row">

        @foreach($articles as $article)

        <div class="col-md-4 mb-4">

            <a href="{{ route('archives.show', $article) }}"
                class="text-decoration-none text-dark d-block">

                <div class="card h-100 shadow-sm archive-card">

                    <img src="{{ asset('storage/articles/'.$article->image) }}"
                        class="card-img-top"
                        style="height:220px; object-fit:cover;">

                    <div class="card-body">

                        <small class="text-light-emphasis">
                            {{ $article->category->name ?? 'Unknown' }}
                        </small>

                        <h5 class="text-white">{{ $article->title }}</h5>

                        <p class="text-light">
                            {{ Str::limit($article->description,100) }}
                        </p>

                    </div>

                </div>

            </a>

        </div>

        @endforeach

    </div>

</div>

@endsection