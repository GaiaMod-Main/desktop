#!/bin/bash

# Check if the scratch-gui folder exists
if [ -d "scratch-gui" ]; then
  # Remove the scratch-gui folder if it exists
  echo "The scratch-gui folder exists. Removing..."
  rm -rf gaiamod-main.github.io
fi

# Clone the scratch-gui repository from GitHub
echo "Cloning the scratch-gui repository from GitHub..."
git clone https://github.com/GaiaMod-Main/gaiamod-main.github.io.git

# Navigate into the scratch-gui folder
cd gaiamod-main.github.io

# Install dependencies using npm ci
echo "Installing dependencies using npm i..."
npm i --force

# Run npm run build
echo "Running npm run build..."
npm run build --force

# Navigate back one directory
cd ..

echo "The script has finished. Now, you updated scratch-gui via Github!"
