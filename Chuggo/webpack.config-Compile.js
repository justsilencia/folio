var webpack = require('webpack');
var path = require('path');
// import webpack from 'webpack';
// import path from 'path';
// import qs from 'querystring';

//process.env.NODE_ENV = process.env.NODE_ENV || "development";
process.env.NODE_ENV = "development";

const config = {
  mode: process.env.NODE_ENV,
  entry: [
    './client/index.jsx'
  ],
  output: {
    path: path.join(__dirname, '/public/js/'),
        filename: 'react-bundle.js'
  },
  module: {
    rules: [
      {
        test: /\.(js|jsx)$/,
        exclude: /node_modules/,
        use: {
          loader: 'babel-loader',
          options: {
            presets: ['@babel/preset-env', '@babel/preset-react']
          }
        }
      }
    ]
  },
  resolve: {
    extensions: ['.js', '.jsx']
  }
};

module.exports = config;