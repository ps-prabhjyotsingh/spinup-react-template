#!/usr/bin/env bash
# post-install actions
project_args=("$@")

if [ "$SPIN_ACTION" == "new" ]; then
  project_directory=${project_args[0]:-spinreact}
  cd "$project_directory" || exit
  npm install
fi
# copy over the .env.example
cp .env.example .env
#read -p "Enter Docker image name: " image_name
#sed -i '' "s|^IMAGE_NAME=.*|IMAGE_NAME=$image_name|" .env
#echo "Updated IMAGE_NAME in .env to $image_name"
