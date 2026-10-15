

import Alpine from 'alpinejs';

window.Alpine = Alpine;

Alpine.start();

window.togglePassword = function (inputId, button) {
    const input = document.getElementById(inputId);

    if (input.type === "password") {
        input.type = "text";
        button.classList.add("active");
        button.setAttribute("aria-label", "Hide password");
    } else {
        input.type = "password";
        button.classList.remove("active");
        button.setAttribute("aria-label", "Show password");
    }
};