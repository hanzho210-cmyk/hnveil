<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>{{ config('app.name', 'VEIL') }}</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    @vite(['resources/css/app.css', 'resources/js/app.js'])
</head>

<body class="bg-dark d-flex align-items-center min-vh-100">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6 col-lg-5">

                <!-- LOGO -->
                <div class="text-center mb-4">
                    <h1 class="logo-gold display-3 fw-bold">VEIL</h1>
                    <p class="text-secondary">What the World Left Behind</p>
                </div>

                <!-- CARD LOGIN -->
                <div class="card bg-dark border-secondary shadow-lg">
                    <div class="card-body p-4 p-lg-5">

                        {{ $slot }}

                    </div>
                </div>

                <!-- FOOTER -->
                <div class="text-center mt-4">
                    <small class="text-light">&copy; {{ date('Y') }} VEIL. All rights reserved.</small>
                </div>

            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>