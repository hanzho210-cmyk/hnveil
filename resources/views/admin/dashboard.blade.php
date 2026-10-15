@extends('layouts.app')

@section('title', 'Admin Dashboard')

@section('content')

<div class="d-flex justify-content-between align-items-center mb-4">

    <div>
        <h2 class="fw-bold">VEIL Admin</h2>
        <p class="text-secondary mb-0">
            Welcome back, {{ Auth::user()->name }}.
        </p>
    </div>

    <div>
        <a href="{{ route('home') }}" class="btn btn-outline-dark">
            ← Home
        </a>

        <a href="{{ route('archives.index') }}" class="btn btn-dark">
            Public Archive
        </a>
    </div>

</div>

<div class="row g-4">

    <div class="col-md-4">
        <a href="{{ route('articles.index') }}"
            class="card shadow-sm dashboard-card text-decoration-none text-reset h-100">

            <div class="card-body text-center">

                <h1>📚</h1>

                <h2 class="fw-bold">{{ $articleCount }}</h2>

                <p class="text-secondary mb-0">
                    Total Articles
                </p>

            </div>
        </a>
    </div>


    <div class="col-md-4">
        <a href="{{ route('categories.index') }}"
            class="card shadow-sm dashboard-card text-decoration-none text-reset h-100">

            <div class="card-body text-center">

                <h1>🗂</h1>

                <h2 class="fw-bold">{{ $categoryCount }}</h2>

                <p class="text-secondary mb-0">
                    Categories
                </p>

            </div>
        </a>
    </div>


    <div class="col-md-4">
        <a href="{{ route('archives.index') }}"
            class="card shadow-sm dashboard-card text-decoration-none text-reset h-100">

            <div class="card-body text-center">

                <h1>🌍</h1>

                <h2 class="fw-bold">{{ $articleCount }}</h2>

                <p class="text-secondary mb-0">
                    Public Archive
                </p>

            </div>
        </a>
    </div>

</div>

<div class="mt-5">

    <a href="{{ route('articles.create') }}"
        class="btn btn-success">
        + Create Archive
    </a>

    <a href="{{ route('categories.index') }}"
        class="btn btn-outline-dark">
        Manage Categories
    </a>

</div>

@endsection