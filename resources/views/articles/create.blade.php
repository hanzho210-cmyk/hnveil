@extends('layouts.app')

@section('title','Articles')

@section('content')

<div class="container mt-5 mb-5">
    <div class="d-flex justify-content-between align-items-center mb-4">

        <div>
            <a href="{{ route('articles.index') }}"
                class="btn btn-outline-dark">
                ← Back
            </a>

            <a href="{{ route('home') }}"
                class="btn btn-secondary">
                Home
            </a>
        </div>

    </div>

    <h2>New Archive</h2>
    <p class="text-secondary mb-4">
        Document what the world has left behind.
    </p>

    <form action="{{ route('articles.store') }}" method="POST" enctype="multipart/form-data">
        @csrf

        <div class="form-group mb-3">
            <label>IMAGE</label>
            <input type="file" class="form-control" name="image">
            @error('image')
            <div class="alert alert-danger mt-2">{{ $message }}</div>
            @enderror
        </div>

        <div class="form-group mb-3">
            <label>TITLE</label>
            <input type="text" class="form-control" name="title" value="{{ old('title') }}">
            @error('title')
            <div class="alert alert-danger mt-2">{{ $message }}</div>
            @enderror
        </div>

        <div class="form-group mb-3">
            <label>DESCRIPTION</label>
            <textarea class="form-control" name="description" rows="5">{{ old('description') }}</textarea>
            @error('description')
            <div class="alert alert-danger mt-2">{{ $message }}</div>
            @enderror
        </div>

        <div class="form-group mb-3">
            <label>CATEGORY</label>
            <select class="form-control" name="category_id">
                <option value="">-- Select Category --</option>
                @foreach($categories as $category)
                <option value="{{ $category->id }}" {{ old('category_id') == $category->id ? 'selected' : '' }}>
                    {{ $category->name }}
                </option>
                @endforeach
            </select>
            @error('category_id')
            <div class="alert alert-danger mt-2">{{ $message }}</div>
            @enderror
        </div>

        <button type="submit" class="btn btn-primary">Save Archive</button>

        <button type="reset" class="btn btn-danger">Clear Form</button>
    </form>
</div>

@endsection