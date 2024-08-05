// Filter Pokemon by type
document.addEventListener('DOMContentLoaded', function() {
    const colorButtons = document.querySelectorAll('#theme a[data-type]');
    colorButtons.forEach(button => {
        button.addEventListener('click', function(event) {
            event.preventDefault();
            const type = button.getAttribute('data-type');
            const currentUrl = new URL(window.location.href);
            currentUrl.searchParams.set('type', type);
            window.location.href = currentUrl.href;
        });
    });
});

// Dark Mode
document.addEventListener('DOMContentLoaded', function() {
    const themeSwitch = document.getElementById('theme-switch');
    const themeIcon = document.getElementById('theme-icon');
    
    function applyTheme(isDarkMode) {
        if (isDarkMode) {
            themeIcon.classList.remove('bi-moon', 'text-black');
            themeIcon.classList.add('bi-sun', 'text-white');
            document.body.classList.add('dark-mode');
            document.body.classList.remove('light-mode');
        } else {
            themeIcon.classList.remove('bi-sun', 'text-white');
            themeIcon.classList.add('bi-moon', 'text-black');
            document.body.classList.add('light-mode');
            document.body.classList.remove('dark-mode');
        }
    }

    themeSwitch.addEventListener('click', function() {
        const isDarkMode = document.body.classList.toggle('dark-mode');
        document.body.classList.toggle('light-mode', !isDarkMode);
        localStorage.setItem('theme', isDarkMode ? 'dark' : 'light');
        applyTheme(isDarkMode);
    });

    const savedTheme = localStorage.getItem('theme');
    const isDarkMode = savedTheme === 'dark';
    
    document.body.classList.toggle('dark-mode', isDarkMode);
    document.body.classList.toggle('light-mode', !isDarkMode);
    applyTheme(isDarkMode);
});