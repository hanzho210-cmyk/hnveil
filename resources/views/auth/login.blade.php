<x-guest-layout>
    <!-- Session Status -->
    <x-auth-session-status class="mb-4" :status="session('status')" />

    <form method="POST" action="{{ route('login') }}">
        @csrf

        <!-- Email Address -->
        <div>
            <x-input-label for="email" :value="__('Email')" />
            <x-text-input
                id="email"
                class="form-control mt-1 w-full"
                type="email"
                name="email" :value="old('email')" required autofocus
                autocomplete="username" />
            <x-input-error :messages="$errors->get('email')" class="mt-2" />
        </div>

        <!-- Password -->
        <div class="mt-4">
            <x-input-label for="password" :value="__('Password')" />

            <div class="password-wrapper">
                <x-text-input
                    id="password"
                    class="form-control mt-1 w-full"
                    type="password"
                    name="password"
                    required
                    autocomplete="current-password" />
                <x-input-error :messages="$errors->get('password')" class="mt-2" />

                <button
                    type="button"
                    class="password-toggle"
                    onclick="togglePassword('password', this)"
                    aria-label="Show password">

                    <svg class="eye-icon" viewBox="0 0 24 24" fill="none">
                        <path d="M2.5 12s3.5-6 9.5-6 9.5 6 9.5 6-3.5 6-9.5 6-9.5-6-9.5-6Z" />
                        <circle cx="12" cy="12" r="2.5" />
                    </svg>

                </button>

            </div>
        </div>

        <!-- Remember Me -->
        <div class="form-check my-4">
            <input
                class="form-check-input"
                type="checkbox"
                name="remember"
                id="remember_me">

            <label class="form-check-label" for="remember_me">
                Remember me
            </label>
        </div>

        <div class="mt-4">

            <x-primary-button class="w-100 justify-content-center">
                {{ __('Log in') }}
            </x-primary-button>

            @if (Route::has('password.request'))
            <div class="text-center mt-3">
                <a href="{{ route('password.request') }}" class="forgot-link">
                    Forgot password?
                </a>
            </div>
            @endif

            @if (Route::has('register'))
            <div class="register-text text-center mt-3">
                Don't have an account?
                <a href="{{ route('register') }}">
                    Register
                </a>
            </div>
            @endif

        </div>
    </form>
</x-guest-layout>