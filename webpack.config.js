const webpack = require('webpack')

module.exports = {
  mode: 'production',
  target: 'node',
  entry: './src/Index.bs.js',
  output: {
    filename: './bin.js',
  },
  resolve: {
    extensions: ['.js'],
  },
  plugins: [
    new webpack.BannerPlugin({ banner: '#!/usr/bin/env node', raw: true }),
  ],
}
