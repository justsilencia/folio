var webpack = require('webpack');
var path = require('path');
var qs = require('querystring');
// import webpack from 'webpack';
// import path from 'path';
// import qs from 'querystring';

//process.env.NODE_ENV = process.env.NODE_ENV || "development";
process.env.NODE_ENV = "development";

const config = {
  mode: process.env.NODE_ENV,
  devtool: '#eval-source-map',
  entry: [
    'webpack-hot-middleware/client',
    './client/index.jsx'
  ],
  output: {
    path: __dirname,
    filename: 'bundle.js',
    publicPath: '/'
  },
  plugins: [
    new webpack.optimize.OccurrenceOrderPlugin(),
    new webpack.HotModuleReplacementPlugin(),
    new webpack.NoEmitOnErrorsPlugin()
  ],
  resolve: {
    extensions: ['.js'],
    alias: {
      request: 'browser-request'
    }
  },
  module: {
    rules: [
      { 
        test: /\.css$/, use: [ 'style-loader', 'css-loader' ] 
      },
      {
        test: /\.jsx$/,
        include: path.join(__dirname, 'client'),
        use: {
          loader: 'babel-loader',
          options: {
            plugins: ['react-hot-loader/babel', '@babel/plugin-transform-runtime'],
            presets: ['@babel/preset-env', '@babel/preset-react']
          }
        }
      }
    ]
  }
};

module.exports = config;