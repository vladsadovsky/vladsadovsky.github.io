#!/bin/bash

# Simple web server for testing the Athena Holistic Health website
# For macOS

PORT=8000

echo "======================================"
echo "Starting local web server..."
echo "======================================"
echo ""
echo "Website will be available at:"
echo "  http://localhost:$PORT"
echo ""
echo "Press Ctrl+C to stop the server"
echo ""
echo "======================================"
echo ""

# Check if Python 3 is available
if command -v python3 &> /dev/null; then
    # Open browser after a short delay
    sleep 2 && open "http://localhost:$PORT" &
    
    # Start Python 3 HTTP server
    python3 -m http.server $PORT
    
# Fallback to Python 2 if Python 3 is not available
elif command -v python &> /dev/null; then
    # Open browser after a short delay
    sleep 2 && open "http://localhost:$PORT" &
    
    # Start Python 2 HTTP server
    python -m SimpleHTTPServer $PORT
    
else
    echo "Error: Python is not installed."
    echo "Please install Python to use this server."
    exit 1
fi
