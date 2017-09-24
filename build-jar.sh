#!/bin/bash

# Create color folder
COLOR_FOLDER=colors
mkdir ${COLOR_FOLDER}

# Copy the .icls files to colors folder
cp jetbrains/*.icls ${COLOR_FOLDER}
cp jetbrains/contrast/*.icls ${COLOR_FOLDER}
cp jetbrains/contrast/*.icls ${COLOR_FOLDER}
cp mythemes/*.icls ${COLOR_FOLDER}

# Create an empty "IntelliJ IDEA Global Settings" file,
# needed to be able to import the JAR using "Import Settings..."
touch "IntelliJ IDEA Global Settings"
jar cfM settings.jar "IntelliJ IDEA Global Settings" ${COLOR_FOLDER}

# Remove temporary folders and files
rm -rf ${COLOR_FOLDER}
rm "IntelliJ IDEA Global Settings"

