// Global error handler — always the last app.use() in index.js
const errorHandler = (err, req, res, next) => {
  console.error(err.stack);
  res.status(err.status || 500).json({
    error: err.message || 'Internal Server Error',
  });
};

module.exports = errorHandler;
