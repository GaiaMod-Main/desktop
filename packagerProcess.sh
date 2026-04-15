#!/bin/bash

# Check if the packager folder exists
if [ -d "packager" ]; then
  # Remove the packager folder if it exists
  echo "The packager folder exists. Removing..."
  rm -rf GaiaMod-Packager
fi

# Clone the packager repository from GitHub
echo "Cloning the packager repository from GitHub..."
git clone https://github.com/GaiaMod-Main/GaiaMod-Packager.git

# Navigate into the packager folder
cd GaiaMod-Packager

# Install dependencies using npm ci
echo "Installing dependencies using npm i..."
npm i --force

# Run npm run build
echo "Running npm run build..."
npm run build --force

# Navigate back one directory
cd ..

echo "The script has finished. Now, you updated packager via Github!"
