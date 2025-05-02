#!/bin/bash

# Exit on error
set -e

echo "🚀 Starting installation process..."

# Install frontend dependencies
echo "📦 Installing frontend dependencies..."
npm install
cd ..

# Setup backend virtual environment and install dependencies
echo "🐍 Setting up Python virtual environment..."
cd backend
python -m venv venv

# Activate virtual environment
.\venv\Scripts\activate

echo "📦 Installing Python dependencies..."
python -m pip install --upgrade pip
pip install -r requirements.txt

# Deactivate virtual environment
deactivate
cd ..

echo "✅ Installation completed successfully!"
echo "To start the application, run: ./run.sh" 