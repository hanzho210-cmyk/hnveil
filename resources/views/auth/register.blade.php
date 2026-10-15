<x-guest-layout>
    <form method="POST" action="{{ route('register') }}">
        @csrf

        <!-- Name -->
        <div>
            <x-input-label for="name" :value="__('name')" />
            <x-text-input
                id="name"
                class="form-control mt-1 w-full"
                type="text"
                name="name" :value="old('name')" required autofocus
                autocomplete="name" />
            <x-input-error :messages="$errors->get('name')" class="mt-2" />
        </div>

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
                    autocomplete="new-password" />

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

        <!-- Confirm Password -->
        <div class="mt-4">
            <x-input-label for="password_confirmation" :value="__('Confirm Password')" />

            <div class="password-wrapper">
                <x-text-input
                    id="password_confirmation"
                    class="form-control mt-1 w-full"
                    type="password"
                    name="password_confirmation"
                    required
                    autocomplete="new-password" />

                <button
                    type="button"
                    class="password-toggle"
                    onclick="togglePassword('password_confirmation', this)"
                    aria-label="Show password">

                    <svg class="eye-icon" viewBox="0 0 24 24" fill="none">
                        <path d="M2.5 12s3.5-6 9.5-6 9.5 6 9.5 6-3.5 6-9.5 6-9.5-6-9.5-6Z" />
                        <circle cx="12" cy="12" r="2.5" />
                    </svg>

                </button>
            </div>
        </div>

        <!-- Register Button -->
        <div class="flex items-center justify-end mt-4">
            <a href="{{ route('register') }}">
                <x-primary-button class="w-100 justify-content-center">
                    {{ __('Register') }}
                </x-primary-button>
            </a>
        </div>

        <div class="flex items-center justify-end mt-4">

            <span class="text-sm text-gray-400">
                Already registered?
            </span>

            <a href="{{ route('login') }}" class="ms-4">
                <x-primary-button type="button" class="login-link-button">
                    {{ __('Login') }}
                </x-primary-button>
            </a>

        </div>
    </form>
</x-guest-layout>