self.addEventListener('fetch', (event) => {
    const url = new URL(event.request.url);
    
    // Mock API responses
    if (url.pathname === '/api/users/123') {
        event.respondWith(
            new Response(JSON.stringify({
                id: 123,
                name: 'John Doe',
                email: 'john@example.com'
            }), {
                headers: { 'Content-Type': 'application/json' }
            })
        );
        return;
    }
    
    // Let other requests pass through
    event.respondWith(fetch(event.request));
});
