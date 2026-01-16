#!/bin/bash
# Push script for du-factory-generator

# Set up SSH key path - adjust this to where your key is located
if [ -f "../.ssh/du_factory_generator_deploy" ]; then
    KEY_PATH="../.ssh/du_factory_generator_deploy"
elif [ -f ".ssh/du_factory_generator_deploy" ]; then
    KEY_PATH=".ssh/du_factory_generator_deploy"
elif [ -f ~/.ssh/du_factory_generator_deploy ]; then
    KEY_PATH=~/.ssh/du_factory_generator_deploy
else
    echo "Error: Deploy key not found. Please specify the path."
    exit 1
fi

export GIT_SSH_COMMAND="ssh -i $KEY_PATH -F /dev/null -o StrictHostKeyChecking=no"

echo "Adding all changes..."
git add -A

echo "Committing changes..."
git commit -m "Add custom server recipes for Dual Universe

- Added Advanced Adjustor L
- Added Advanced Aileron M and L  
- Added Advanced Atmospheric Airbrake L
- Added Advanced Optimised Space Fuel Tank M
- Added Advanced Wing M and L
- Added Counterphase Advanced Maneuver Atmospheric Engine L
- Added Counterphase Advanced Military Atmospheric Engine XL
- Added Advanced Combustion Chamber XL
- Added Exotic Atmospheric Engine Overclock
- Added Exotic Space Engine Overclock
- Added Uncommon Chemical Container L
- Added Uncommon Gravity-Inverted Atmospheric Fuel Tank L
- Added Uncommon Gravity-Inverted Space Fuel Tank L"

echo "Pushing to GitHub..."
git push origin master

echo "Done!"
