#!/bin/bash

#!/usr/bin/env bash

# Minimalist web app parser

# Define the URL to parse
URL=$1

# Define the HTML parser command
PARSER_CMD="lynx -dump -nolist"

# Define the output file
OUTPUT_FILE="parsed_data.txt"

# Remove any existing output file
rm -f "$OUTPUT_FILE"

# Parse the webpage using lynx
$PARSER_CMD "$URL" > "$OUTPUT_FILE"

# Print the parsed data
echo "Parsed data saved to $OUTPUT_FILE"