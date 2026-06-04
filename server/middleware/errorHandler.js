// ============================================================
// Global error handler — NOT wired up yet, kept for future use
// To use: import this file in index.js and add as last middleware:
//   const errorHandler = require('./middleware/errorHandler')
//   app.use(errorHandler)  ← must be after all routes
// ============================================================
// Global error handler — always the last app.use() in index.js
const errorHandler = (err, req, res, next) => {
  console.error(err.stack);
  res.status(err.status || 500).json({
    error: err.message || 'Internal Server Error',
  });
};

module.exports = errorHandler;
