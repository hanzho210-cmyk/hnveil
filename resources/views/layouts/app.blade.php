<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>@yield('title', 'VEIL')</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

    @vite(['resources/css/app.css', 'resources/js/app.js'])
</head>

<body>

    @include('layouts.navbar')

    @if(session('success'))
    <div class="container mt-3">
        <div class="alert alert-success alert-dismissible fade show">

            {{ session('success') }}

            <button class="btn-close"
                data-bs-dismiss="alert">
            </button>

        </div>
    </div>
    @endif

    <div class="container mt-5">
        @yield('content')
        <hr class="mt-5">
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

    <footer class="footer">

        <div class="container text-center">

            <h3 class="fw-bold mb-3">
                VEIL
            </h3>

            <p class="mb-2 text-secondary">
                What the World Left Behind
            </p>

            <hr class="my-4">

            <small class="text-secondary">
                © {{ date('Y') }} VEIL. All Rights Reserved.
            </small>

        </div>

    </footer>

</body>

</html>