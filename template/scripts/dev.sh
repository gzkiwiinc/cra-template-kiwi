#!/bin/bash

rm -rf wwwroot/dist/** || true
webpack-dev-server --config config/webpack.dev.conf.js
