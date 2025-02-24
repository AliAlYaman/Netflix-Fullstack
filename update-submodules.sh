#!/bin/bash

# Navigate to the repository directory (if not already there)
cd "$(dirname "$0")"

# Pull the latest changes from the main repository
echo "Pulling latest changes from Netflix-Fullstack..."
git pull origin main

# Update submodules
echo "Updating submodules..."
git submodule update --init --recursive

# Pull latest changes for each submodule
echo "Pulling latest changes for Netflix-Frontend..."
cd frontend
git pull origin main
cd ..

echo "Pulling latest changes for Netflix-Backend..."
cd backend
git pull origin main
cd ..

echo "All submodules updated successfully!"