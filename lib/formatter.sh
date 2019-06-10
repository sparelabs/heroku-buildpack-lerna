#!/usr/bin/env bash

arrow() {
  sed -u 's/^/-----> /'
}

indent() {
  sed -u 's/^/      /'
}