
        window.onload = function() {
            // Retrieve the stored scroll position from session storage
            var scrollPosition = sessionStorage.getItem('scrollPosition');

            // Scroll to the stored position
            window.scrollTo(0, scrollPosition);

            // Clear the stored scroll position
            sessionStorage.removeItem('scrollPosition');
        };