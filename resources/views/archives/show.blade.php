@extends('layouts.app')

@section('title', $article->title)

@section('content')

<div class="container py-5">

    <div class="d-flex justify-content-between mb-4">

        <a href="{{ route('archives.index') }}"
            class="btn btn-outline-dark">
            ← Back to Archives
        </a>

        <a href="{{ route('home') }}"
            class="btn btn-secondary">
            Home
        </a>

    </div>


    <div class="text-center mb-5">

        <img src="{{ asset('storage/articles/'.$article->image) }}"
            class="archive-image mb-4"
            id="archiveImage">

    </div>

    <div id="lightbox">

        <span id="closeLightbox">&times;</span>

        <img id="lightboxImage">

    </div>

    <div class="mx-auto" style="max-width:850px;">

        <span class="badge bg-dark mb-3 px-3 py-2">
            {{ $article->category->name ?? 'Unknown' }}
        </span>

        <h1 class="fw-bold mb-3">
            {{ $article->title }}
        </h1>

        <p class="text-light">
            Published
            {{ optional($article->created_at)->format('d F Y') ?? 'Tanggal tidak tersedia' }}
        </p>

        <hr class="my-4">

        <div class="archive-content text-secondary">
            {!! nl2br(e($article->description)) !!}
        </div>

        <hr class="my-5">

        <hr class="my-5">

        {{-- ================= INVESTIGATOR NOTES ================= --}}

        <div class="mt-5">

            <h3 class="fw-bold mb-4">
                Investigator Notes
            </h3>

            <p class="text-secondary mb-4">
                Leave your thoughts, theories, or findings about this archive.
            </p>

            {{-- COMMENT FORM --}}
            @auth

            <form action="{{ route('comments.store', $article->id) }}"
                method="POST"
                class="mb-5">

                @csrf

                <div class="mb-3">

                    <textarea
                        name="content"
                        class="form-control"
                        rows="4"
                        placeholder="Write your note..."
                        required
                        maxlength="1000">{{ old('content') }}</textarea>

                    @error('content')
                    <div class="text-danger mt-2">
                        {{ $message }}
                    </div>
                    @enderror

                </div>

                <button type="submit"
                    class="btn btn-outline-dark">
                    Submit Note
                </button>

            </form>

            @else

            <p class="text-secondary">
                Please
                <a href="{{ route('login') }}">
                    login
                </a>
                to leave an investigator note.
            </p>

            @endauth


            {{-- COMMENTS LIST --}}
            <div class="comments-list">

                @forelse($article->comments->sortByDesc('created_at') as $comment)

                <div class="card mb-3">

                    <div class="card-body">

                        <div class="d-flex justify-content-between align-items-start mb-2">

                            <strong>
                                👤 {{ $comment->user->name }}
                            </strong>

                            <small class="text-secondary">
                                {{ $comment->created_at->format('d F Y, H:i') }}
                            </small>

                        </div>

                        <p class="mb-0 text-light">
                            {{ $comment->content }}
                        </p>

                    </div>

                </div>

                @empty

                <p class="text-secondary">
                    No investigator notes yet.
                </p>

                @endforelse

            </div>

        </div>

        <hr class="my-5">

        <a href="{{ route('archives.index') }}"
            class="btn btn-outline-dark">
            ← Back to Archives
        </a>

    </div>

</div>

<script>
    const image = document.getElementById('archiveImage');
    const lightbox = document.getElementById('lightbox');
    const lightboxImage = document.getElementById('lightboxImage');
    const closeBtn = document.getElementById('closeLightbox');

    image.onclick = function() {

        lightbox.style.display = 'flex';
        lightboxImage.src = this.src;

    }

    closeBtn.onclick = function() {

        lightbox.style.display = 'none';

    }

    lightbox.onclick = function(e) {

        if (e.target === lightbox) {

            lightbox.style.display = 'none';

        }

    }

    document.addEventListener('keydown', function(e) {

        if (e.key === 'Escape') {
            lightbox.style.display = 'none';
        }

    });
</script>

@endsection