#!/bin/bash
clear
read -p "Type a name for a folder you would like to copy:   " copy
read -p "Type destination folder you would like to copy it to (or create destination folder if not existing):   " dest

if [[ -d "$copy" ]] && [[ -d "$dest" ]]; then
  cp -r "$copy" "$dest" 
else 
  echo "Both Destination or folder do not exist"
  
fi
 
exit 0
