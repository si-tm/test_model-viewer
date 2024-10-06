#!/bin/bash

# Create the directory structure
mkdir -p shared-assets/models
mkdir -p shared-assets/environments

# Create the index.html file with basic HTML content
cat <<EOL > index.html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>3D Model Viewer</title>
  <!-- Import the model-viewer component -->
  <script type="module" src="https://ajax.googleapis.com/ajax/libs/model-viewer/3.5.0/model-viewer.min.js"></script>
  <style>
    body, html {
      margin: 0;
      padding: 0;
      height: 100%;
      display: flex;
      justify-content: center;
      align-items: center;
      background-color: #f0f0f0;
    }
    model-viewer {
      width: 100%;
      height: 100%;
      max-width: 800px;
      max-height: 800px;
    }
  </style>
</head>
<body>

  <!-- Use the model-viewer element -->
  <model-viewer alt="Neil Armstrong's Spacesuit" 
                src="shared-assets/models/NeilArmstrong.glb"
                ar 
                environment-image="shared-assets/environments/moon_1k.hdr" 
                poster="shared-assets/models/NeilArmstrong.webp"
                shadow-intensity="1" 
                camera-controls 
                touch-action="pan-y">
  </model-viewer>

</body>
</html>
EOL

# Create a basic README.md file
cat <<EOL > README.md
# 3D Model Viewer

This project uses the \`<model-viewer>\` component to display a 3D model of Neil Armstrong's spacesuit.

## File Structure

- \`index.html\`: The main file that renders the 3D model in the browser.
- \`shared-assets/models/NeilArmstrong.glb\`: The 3D model file.
- \`shared-assets/environments/moon_1k.hdr\`: The environment HDR image for lighting.
- \`shared-assets/models/NeilArmstrong.webp\`: The fallback poster image.
EOL

# Create empty placeholder files for the assets
touch shared-assets/models/NeilArmstrong.glb
touch shared-assets/environments/moon_1k.hdr
touch shared-assets/models/NeilArmstrong.webp

echo "Directory structure and files have been created."
