const http = require('http');


http.createServer((req, res) => {
    if (req.url === '/run') {
        require('./api/run')(req, res);
    }
}).listen(3000, () => {
    console.log('Server is running on port 3000');
});
