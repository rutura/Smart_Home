#!/bin/bash
directory="$1"
if [[ -z "$directory" ]]; then
  echo "Error: Please provide the directory path as an argument."
  exit 1
fi
if [[ ! -d "$directory" ]]; then
  echo "Error: Directory '$directory' does not exist."
  exit 1
fi
find "$directory" -name "*.qml" -type f -exec qmlformat -i {} \;
echo "Successfully formatted QML files in '$directory' and its subdirectories."
