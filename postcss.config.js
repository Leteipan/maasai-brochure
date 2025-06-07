// postcss.config.js
module.exports = {
  plugins: {
    '@tailwindcss/postcss': {},   // ← use the new wrapper package
    autoprefixer: {},             // ← autoprefixer stays the same
  },
};
