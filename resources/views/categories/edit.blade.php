@extends('layouts.app')

@section('title', 'Edit Category')

@section('content')
<div class="d-flex justify-content-between align-items-center mb-4">

    <div>
        <a href="{{ route('categories.index') }}"
            class="btn btn-outline-dark">
            ← Back
        </a>

        <a href="{{ route('home') }}"
            class="btn btn-secondary">
            Home
        </a>
    </div>

</div>

<h2 class="mb-4 fw-bold">Edit Category</h2>

<form action="{{ route('categories.update', $category->id) }}" method="POST">

    @csrf
    @method('PUT')

    <div class="mb-3">

        <label class="form-label">Category Name</label>

        <input
            type="text"
            name="name"
            class="form-control"
            value="{{ old('name', $category->name) }}">

        @error('name')
        <div class="text-danger mt-2">
            {{ $message }}
        </div>
        @enderror

    </div>

    <button class="btn btn-primary">
        Update
    </button>

    <a href="{{ route('categories.index') }}"
        class="btn btn-secondary">
        Cancel
    </a>

</form>

@endsection