#!/bin/bash

while true; do
    # Prompt the user to type a website URL or "exit" to quit
    echo "Please type a website URL to download or type 'exit' to quit:"
    read -r url

    # Check if the user wants to exit
    if [[ "$url" == "exit" ]]; then
        echo "Exiting..."
        break
    fi

    # Prompt the user to type a download location
    echo "Please type a download location:"
    read -r location

    # Check if the download location exists and create it if it doesn't
    if [[ ! -d "$location" ]]; then
        echo "Directory does not exist. Creating directory..."
        mkdir -p "$location"
    fi

    # Use wget to download the webpage to the specified location
    wget -P "$location" "$url"

    echo "Downloaded $url to $location"
done
