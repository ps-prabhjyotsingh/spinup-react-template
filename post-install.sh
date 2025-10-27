#!/usr/bin/env bash
# post-install actions
project_args=("$@")

if [ "$SPIN_ACTION" == "new" ]; then
  project_directory=${project_args[0]:-spinreact}
  cd "$project_directory" || exit
  npm install
fi
read -p "Enter Docker image name: " image_name
echo "Current IMAGE_NAME line:"
grep "^IMAGE_NAME" Makefile
sed -i '' "s|^IMAGE_NAME ?=.*|IMAGE_NAME ?= $image_name|" Makefile
echo "After update:"
grep "^IMAGE_NAME" Makefile
echo "Updated IMAGE_NAME in Makefile to $image_name"
