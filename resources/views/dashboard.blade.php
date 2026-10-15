@extends('layouts.app')

@section('title', 'Dashboard')

@section('content')

<div class="d-flex justify-content-between align-items-center mb-5">

    <div>
        <h2 class="fw-bold">Your Dashboard</h2>

        <p class="text-secondary mb-0">
            Welcome back, {{ Auth::user()->name }}.
        </p>
    </div>

    <div>
        <a href="{{ route('home') }}" class="btn btn-outline-dark">
            ← Home
        </a>

        <a href="{{ route('archives.index') }}" class="btn btn-dark">
            Explore Archives
        </a>
    </div>

</div>


{{-- Reading Overview --}}
<div class="row g-4 mb-5">

    <div class="col-md-4">
        <div class="card shadow-sm dashboard-card h-100">
            <div class="card-body text-center">

                <h1>📖</h1>

                <h2 class="fw-bold">
                    {{ $readingHistories->count() }}
                </h2>

                <p class="text-secondary mb-0">
                    Archives Read
                </p>

            </div>
        </div>
    </div>


    <div class="col-md-4">
        <div class="card shadow-sm dashboard-card h-100">
            <div class="card-body text-center">

                <h1>🕘</h1>

                <h2 class="fw-bold">
                    {{ $readingHistories->count() }}
                </h2>

                <p class="text-secondary mb-0">
                    Reading History
                </p>

            </div>
        </div>
    </div>


    <div class="col-md-4">
        <div class="card shadow-sm dashboard-card h-100">
            <div class="card-body text-center">

                <h1>🏆</h1>

                <h2 class="fw-bold">
                    #{{ $rank }}
                </h2>

                <p class="text-secondary mb-0">
                    Reading Rank
                </p>

            </div>
        </div>
    </div>

</div>


{{-- Reading History --}}
<div class="row g-4">

    <div class="col-lg-7">

        <div class="card shadow-sm h-100">

            <div class="card-body">

                <div class="d-flex justify-content-between align-items-center mb-4">

                    <div>
                        <h4 class="fw-bold mb-1">
                            Reading History
                        </h4>

                        <p class="text-secondary mb-0">
                            Archives you recently explored.
                        </p>
                    </div>

                    <span class="badge">
                        {{ $readingHistories->count() }} Read
                    </span>

                </div>


                @if ($readingHistories->isEmpty())

                <div class="text-center py-5">

                    <div style="font-size: 42px;">
                        🕯
                    </div>

                    <h5 class="mt-3">
                        Your archive history is empty.
                    </h5>

                    <p class="text-secondary">
                        Start exploring VEIL to build your reading history.
                    </p>

                    <a href="{{ route('archives.index') }}"
                        class="btn btn-primary mt-2">
                        Explore Archives
                    </a>

                </div>

                @else

                <div class="list-group list-group-flush">

                    @foreach ($readingHistories as $history)

                    <a href="{{ route('archives.show', $history->article) }}"
                        class="list-group-item list-group-item-action bg-transparent text-light border-secondary py-3">

                        <div class="d-flex align-items-center">

                            <img
                                src="{{ asset('storage/articles/' . $history->article->image) }}"
                                alt="{{ $history->article->title }}"
                                style="width: 70px; height: 70px; object-fit: cover; border-radius: 8px;"
                                class="me-3">

                            <div class="flex-grow-1">

                                <h5 class="mb-1">
                                    {{ $history->article->title }}
                                </h5>

                                <small class="text-secondary">
                                    {{ $history->article->category->name }}
                                </small>

                                <br>

                                <small class="text-secondary">
                                    Last read:
                                    {{ $history->updated_at->diffForHumans() }}
                                </small>

                            </div>

                            <span class="ms-3">
                                →
                            </span>

                        </div>

                    </a>

                    @endforeach

                </div>

                @endif

            </div>

        </div>

    </div>


    {{-- Most Read --}}
    <div class="col-lg-5">

        <div class="card shadow-sm h-100">

            <div class="card-body">

                <div class="mb-4">

                    <h4 class="fw-bold mb-1">
                        Most Read
                    </h4>

                    <p class="text-secondary mb-0">
                        Archives you have explored the most.
                    </p>

                </div>


                @if ($mostRead->isEmpty())

                <div class="text-center py-5">

                    <div style="font-size: 42px;">
                        🔍
                    </div>

                    <h5 class="mt-3">
                        No reading data yet.
                    </h5>

                    <p class="text-secondary">
                        Your most-read archives will appear here.
                    </p>

                </div>

                @else

                <div class="list-group list-group-flush">

                    @foreach ($mostRead as $history)

                    <a href="{{ route('archives.show', $history->article) }}"
                        class="list-group-item list-group-item-action bg-transparent text-light border-secondary py-3">

                        <div class="d-flex align-items-center">

                            <img
                                src="{{ asset('storage/articles/' . $history->article->image) }}"
                                alt="{{ $history->article->title }}"
                                style="width: 70px; height: 70px; object-fit: cover; border-radius: 8px;"
                                class="me-3">

                            <div class="flex-grow-1">

                                <h6 class="mb-1">
                                    {{ $history->article->title }}
                                </h6>

                                <small class="text-secondary">
                                    {{ $history->article->category->name }}
                                </small>

                            </div>

                            <div class="text-end ms-2">

                                <strong>
                                    {{ $history->read_count }}
                                </strong>

                                <br>

                                <small class="text-secondary">
                                    {{ $history->read_count == 1 ? 'read' : 'reads' }}
                                </small>

                            </div>

                        </div>

                    </a>

                    @endforeach

                </div>

                @endif

            </div>

        </div>

    </div>

</div>


@endsection