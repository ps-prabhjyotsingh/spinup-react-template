#!/usr/bin/env bash
# post-install actions

read -p "Enter Docker image name: " image_name
echo "Current IMAGE_NAME line:"
grep "^IMAGE_NAME" Makefile
sed -i '' "s|^IMAGE_NAME ?=.*|IMAGE_NAME ?= $image_name|" Makefile
echo "After update:"
grep "^IMAGE_NAME" Makefile
echo "Updated IMAGE_NAME in Makefile to $image_name"
