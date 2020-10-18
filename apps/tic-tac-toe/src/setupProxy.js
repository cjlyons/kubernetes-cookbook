const { createProxyMiddleware } = require('http-proxy-middleware');

// For DEV (e.g. npm start) use only! A real reverse proxy solution is needed for prod deployments.
module.exports = function(app) {
    app.use(
      '/hello-world',
      createProxyMiddleware({
        target: 'http://localhost:3100',
        changeOrigin: true,
      })
    );
    // add more APIs by including additional app.use statements
  };