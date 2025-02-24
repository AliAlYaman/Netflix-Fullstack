#!/bin/bash

echo "Updating all submodules..."

# Navigate to frontend submodule, pull latest changes
echo "Updating frontend..."
cd frontend || { echo "Frontend directory not found!"; exit 1; }
git pull origin main || { echo "Failed to update frontend!"; exit 1; }
cd ..

# Navigate to backend submodule, pull latest changes
echo "Updating backend..."
cd backend || { echo "Backend directory not found!"; exit 1; }
git pull origin main || { echo "Failed to update backend!"; exit 1; }
cd ..

# Update git submodules in case any new submodules were added
git submodule update --remote --merge

echo "Submodules updated successfully!"
