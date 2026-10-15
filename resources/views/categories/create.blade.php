@extends('layouts.app')

@section('title', 'New Category')

@section('content')
<div class="d-flex justify-content-between align-items-center mb-4">

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

<h2 class="mb-4">New Category</h2>

<form action="{{ route('categories.store') }}" method="POST">

    @csrf

    <div class="mb-3">

        <label class="form-label">Category Name</label>

        <input
            type="text"
            name="name"
            class="form-control"
            value="{{ old('name') }}">

        @error('name')
        <div class="text-danger mt-2">
            {{ $message }}
        </div>
        @enderror

    </div>

    <button class="btn btn-primary">
        Save
    </button>

    <a href="{{ route('categories.index') }}"
        class="btn btn-secondary">
        Cancel
    </a>

</form>

@endsection