@extends('layouts.app')

@section('title', 'Categories')

@section('content')

<div class="d-flex justify-content-between align-items-center mb-4">

    <h2 class="fw-bold">Categories</h2>

    <div>
        <a href="{{ route('admin.dashboard') }}" class="btn btn-outline-dark">
            ← Dashboard
        </a>

        <a href="{{ route('home') }}"
            class="btn btn-secondary">
            Home
        </a>


        <a href="{{ route('categories.create') }}" class="btn btn-success">
            + New Category
        </a>

    </div>

</div>

@if(session('success'))
<div class="alert alert-success">
    {{ session('success') }}
</div>
@endif

<table class="table table-bordered table-hover">

    <thead class="table-dark">
        <tr>
            <th width="10%">ID</th>
            <th>Name</th>
            <th width="20%">Action</th>
        </tr>
    </thead>

    <tbody>

        @forelse($categories as $category)

        <tr>

            <td>{{ $category->id }}</td>

            <td>{{ $category->name }}</td>

            <td>

                <div class="action-buttons d-flex gap-2 justify-content-center">

                    <a href="{{ route('categories.edit', $category->id) }}"
                        class="btn btn-edit btn-sm">
                        Edit
                    </a>

                    <form class="d-inline">

                        <button
                            type="button"
                            class="btn btn-danger btn-sm"
                            data-bs-toggle="modal"
                            data-bs-target="#deleteModal{{ $category->id }}">
                            Delete
                        </button>

                    </form>

                </div>

                <div class="modal fade"
                    id="deleteModal{{ $category->id }}"
                    tabindex="-1">

                    <div class="modal-dialog">

                        <div class="modal-content">

                            <div class="modal-header">

                                <h5 class="modal-title">
                                    Delete Category
                                </h5>

                                <button
                                    type="button"
                                    class="btn-close"
                                    data-bs-dismiss="modal">
                                </button>

                            </div>

                            <div class="modal-body">

                                Are you sure you want to delete

                                <strong>{{ $category->name }}</strong>?

                            </div>

                            <div class="modal-footer">

                                <button
                                    type="button"
                                    class="btn btn-secondary"
                                    data-bs-dismiss="modal">
                                    Cancel
                                </button>

                                <form action="{{ route('categories.destroy', $category->id) }}"
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
            <td colspan="3" class="text-center">
                No categories found.
            </td>
        </tr>

        @endforelse

    </tbody>

</table>

{{ $categories->links() }}

@endsection