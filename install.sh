#!/usr/bin/env bash
project_args=("$@")

# Determine the project directory based on the SPIN_ACTION
if [ "$SPIN_ACTION" == "new" ]; then
  project_directory=${project_args[0]:-spinreact}
  mkdir -p "$project_directory"
  cd $project_directory && echo no | npm create vite@latest . -- --template react-ts
  cd - #go back
  # Set the absolute path to the project directory
  SPIN_PROJECT_DIRECTORY="$(pwd)/$project_directory"

elif [ "$SPIN_ACTION" == "init" ]; then
  # Use the current working directory for the project directory
  SPIN_PROJECT_DIRECTORY="$(pwd)"
fi
export SPIN_PROJECT_DIRECTORY
new() {
  echo "Initializing new React Spin project..."
  cp -r template/* "$project_directory"/
  cd "$project_directory" || exit
  init
}

init() {
  # Add post-setup instructions for the user
  npm install
}
