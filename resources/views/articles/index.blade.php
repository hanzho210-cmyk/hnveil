@extends('layouts.app')

@section('title','Articles')

@section('content')

<div class="container mt-5">
    <div class="d-flex justify-content-between align-items-center mb-4">

        <h2 class="fw-bold">Articles</h2>

        <div>
            <a href="{{ route('admin.dashboard') }}"
                class="btn btn-outline-dark">
                ← Dashboard
            </a>

            <a href="{{ route('home') }}"
                class="btn btn-secondary">
                Home
            </a>
        </div>

    </div>

    <a href="{{ route('articles.create') }}" class="btn btn-success mb-3">
        NEW ARCHIVE
    </a>

    <!--Form Search-->
    <form action="{{ route('articles.index') }}" method="GET" class="mb-3">
        <div class="input-group">
            <input
                type="text"
                name="search"
                class="form-control"
                placeholder="Search archive..."
                value="{{ request('search') }}">

            <button class="btn btn-dark">
                Search
            </button>
        </div>
    </form>

    <table class="table table-transparent table-hover btn-table btn-transparent">
        <thead class="table-dark">
            <tr>
                <th >IMAGE</th>
                <th>TITLE</th>
                <th>CATEGORY</th>
                <th>ACTIONS</th>
            </tr>
        </thead>
        <tbody>
            @forelse ($articles as $article)
            <tr>
                <td><img src="{{ asset('/storage/articles/'.$article->image) }}" width="100"></td>
                <td>{!! str_ireplace(
                    request('search'),
                    '<mark>'.request('search').'</mark>',
                    e($article->title)
                    ) !!}
                </td>

                <td>{!! str_ireplace(
                    request('search'),
                    '<mark>'.request('search').'</mark>',
                    e($article->category->name ?? '-')
                    ) !!}
                </td>

                <td>
                    <a href="{{ route('articles.edit', $article->id) }}"
                        class="btn btn-sm btn-edit">
                        EDIT
                    </a>

                    <form action="{{ route('articles.destroy', $article->id) }}"
                        method="POST"
                        style="display:inline">

                        @csrf
                        @method('DELETE')

                        <button
                            type="button"
                            class="btn btn-danger btn-sm"
                            data-bs-toggle="modal"
                            data-bs-target="#deleteModal{{ $article->id }}">

                            Delete

                        </button>
                    </form>

                    <div class="modal fade"
                        id="deleteModal{{ $article->id }}"
                        tabindex="-1">

                        <div class="modal-dialog">

                            <div class="modal-content">

                                <div class="modal-header">

                                    <h5 class="modal-title">

                                        Delete Archive

                                    </h5>

                                    <button
                                        class="btn-close"
                                        data-bs-dismiss="modal">
                                    </button>

                                </div>

                                <div class="modal-body">

                                    Are you sure you want to delete

                                    <strong>

                                        {{ $article->title }}

                                    </strong>

                                    ?

                                </div>

                                <div class="modal-footer">

                                    <button
                                        class="btn btn-secondary"
                                        data-bs-dismiss="modal">

                                        Cancel

                                    </button>

                                    <form action="{{ route('articles.destroy',$article->id) }}"
                                        method="POST">

                                        @csrf
                                        @method('DELETE')

                                        <button class="btn btn-danger">

                                            Delete

                                        </button>

                                    </form>

                                </div>

                            </div>

                        </div>

                    </div>

                </td>
            </tr>
            @empty
            <tr>
                <td colspan="4">belum ada artikel.</td>
            </tr>
            @endforelse
        </tbody>
    </table>
    {{ $articles->links() }}
</div>

@endsection