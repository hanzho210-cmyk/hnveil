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
    <form action="{{ route('articles.update', $article->id) }}" method="POST" enctype="multipart/form-data">
        @csrf
        @method('PUT')

        <div class="form-group mb-3">
            <label>IMAGE</label>
            <input type="file" class="form-control" name="image">
            @error('image')
            <div class="alert alert-danger mt-2">{{ $message }}</div>
            @enderror
        </div>

        <div class="form-group mb-3">
            <label>TITLE</label>
            <input type="text" class="form-control" name="title" value="{{ old('title', $article->title) }}">
            @error('title')
            <div class="alert alert-danger mt-2">{{ $message }}</div>
            @enderror
        </div>

        <div class="form-group mb-3">
            <label>DESCRIPTION</label>
            <textarea class="form-control" name="description" rows="5">{{ old('description', $article->description) }}</textarea>
            @error('description')
            <div class="alert alert-danger mt-2">{{ $message }}</div>
            @enderror
        </div>

        <div class="form-group mb-3">
            <label>CATEGORY</label>
            <select class="form-control" name="category_id">
                <option value="">-- Select Category --</option>
                @foreach($categories as $category)
                <option value="{{ $category->id }}"
                    {{ old('category_id', $article->category_id) == $category->id ? 'selected' : '' }}>
                    {{ $category->name }}
                </option>
                @endforeach
            </select>
            @error('category_id')
            <div class="alert alert-danger mt-2">{{ $message }}</div>
            @enderror
        </div>

        <button type="submit" class="btn btn-primary">Update Archive</button>

        <a href="{{ route('articles.index') }}" class="btn btn-secondary">Cancel</a>
    </form>
</div>

@endsection