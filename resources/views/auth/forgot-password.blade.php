<x-guest-layout>
    <div class="mb-4 text-sm text-gray-600">
        {{ __('Forgot your password? Enter your email and we\'ll send a reset link.') }}
    </div>

    <!-- Session Status -->
    <x-auth-session-status class="mb-4" :status="session('status')" />

    <form method="POST" action="{{ route('password.email') }}">
        @csrf

        <!-- Email Address -->
        <div>
            <x-input-label for="email" :value="__('Email')" />

            <x-text-input
                id="email"
                class="form-control mt-1 w-full"
                type="email"
                name="email"
                :value="old('email')"
                required
                autofocus />

            <x-input-error :messages="$errors->get('email')" class="mt-2" />
        </div>

        <div class="d-grid mt-4">
            <button type="submit" class="btn btn-success">
                Send Reset Link
            </button>
        </div>

        <div class="text-center mt-4">
            <a href="{{ route('login') }}">
                ← Back to Login
            </a>
        </div>

    </form>
</x-guest-layout>