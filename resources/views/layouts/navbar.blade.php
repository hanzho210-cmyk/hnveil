<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container">

        <a class="navbar-brand fw-bold logo-gold"
            href="{{ route('home') }}">
            VEIL
        </a>

        <button class="navbar-toggler"
            type="button"
            data-bs-toggle="collapse"
            data-bs-target="#navbarNav">

            <span class="navbar-toggler-icon"></span>

        </button>

        <div class="collapse navbar-collapse" id="navbarNav">

            <ul class="navbar-nav ms-auto">

                <li class="nav-item">
                    <a class="nav-link {{ request()->routeIs('home') ? 'active fw-bold' : '' }}"
                        href="{{ route('home') }}">
                        Home
                    </a>
                </li>

                <li class="nav-item">
                    <a class="nav-link {{ request()->routeIs('archives.index') ? 'active fw-bold' : '' }}"
                        href="{{ route('archives.index') }}">
                        Explore Archives
                    </a>
                </li>

                @guest
                <li class="nav-item">
                    <a class="nav-link" href="{{ route('login') }}">
                        Login
                    </a>
                </li>
                @endguest

                @auth

                {{-- ================= USER ================= --}}
                @if (Auth::user()->role !== 'admin')

                <li class="nav-item">
                    <a class="nav-link {{ request()->routeIs('dashboard') ? 'active fw-bold' : '' }}"
                        href="{{ route('dashboard') }}">
                        Dashboard
                    </a>
                </li>

                {{-- ================= ADMIN ================= --}}
                @else

                <li class="nav-item">
                    <a class="nav-link {{ request()->routeIs('admin.dashboard') ? 'active fw-bold' : '' }}"
                        href="{{ route('admin.dashboard') }}">
                        Admin Dashboard
                    </a>
                </li>

                <li class="nav-item">
                    <a class="nav-link {{ request()->routeIs('articles.*') ? 'active fw-bold' : '' }}"
                        href="{{ route('articles.index') }}">
                        Articles
                    </a>
                </li>

                <li class="nav-item">
                    <a class="nav-link {{ request()->routeIs('categories.*') ? 'active fw-bold' : '' }}"
                        href="{{ route('categories.index') }}">
                        Categories
                    </a>
                </li>

                @endif

                {{-- USER INFO --}}
                <li class="nav-item mt-2 mt-lg-0 me-lg-3">
                    <span class="user-badge">
                        👤 {{ Auth::user()->name }}
                    </span>
                </li>

                {{-- LOGOUT --}}
                <li class="nav-item mt-2 mt-lg-0">
                    <form method="POST" action="{{ route('logout') }}">
                        @csrf
                        <button type="submit" class="btn btn-outline-dark btn-sm">
                            Logout
                        </button>
                    </form>
                </li>

                @endauth

            </ul>

        </div>

    </div>
</nav>