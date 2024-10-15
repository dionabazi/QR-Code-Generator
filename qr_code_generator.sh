#!/bin/bash

# Prompt user for input
echo "Enter the data for the QR code (URL, text, etc.):"
read data

# Run the Python script to generate the QR code
python3 qr_code_generator.py "$data"
