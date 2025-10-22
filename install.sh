#!/usr/bin/env bash

new() {
  echo "Initializing new React Spin project..."
  cp -r template/* .
  init
}

init() {
  # Add post-setup instructions for the user
  add_user_todo_item "Run 'npm install' to install dependencies before starting development."
}

"$@"

