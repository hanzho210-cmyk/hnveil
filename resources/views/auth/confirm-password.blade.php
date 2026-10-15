<x-guest-layout>
    <div class="mb-4 text-sm text-gray-600">
        {{ __('This is a secure area of the application. Please confirm your password before continuing.') }}
    </div>

    <form method="POST" action="{{ route('password.confirm') }}">
        @csrf

        <!-- Password -->
        <div>
            <x-input-label for="password" :value="__('Password')" />

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

        <div class="flex justify-end mt-4">
            <x-primary-button>
                {{ __('Confirm') }}
            </x-primary-button>
        </div>
    </form>
</x-guest-layout>