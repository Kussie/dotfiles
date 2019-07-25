#!/bin/bash

echo "Cloning Git Repos"

cd ~/Work/Repos
mkdir soar
cd soar
mkdir hotels
mkdir air
mkdir services
mkdir microuis
mkdir assets
mkdir packages
git clone git@github.com:Kussie/fcl-prodigy-chrome.git
cd air
echo "Cloning Air Repos"
git clone -q git@github.com:fclimited/booking-engine.git
cd ..
cd services
echo "Cloning Service Repos"
git clone -q git@github.com:fclimited/soar-addon-service.git
git clone -q git@github.com:fclimited/soar-adyen-service.git
cd ..
cd microuis
echo "Cloning Micro UIs"
git clone -q git@github.com:fclimited/soar-addon-micro-ui.git
git clone -q git@github.com:fclimited/soar-ancillaries-micro-ui.git
git clone -q git@github.com:fclimited/soar-checkout-micro-ui.git
git clone -q git@github.com:fclimited/soar-travellers-micro-ui.git
cd ..
cd assets
echo "Cloning Assets"
git clone -q git@github.com:fclimited/soar-external-assets.git
cd ..
cd hotels
echo "Cloning Hotels"
git clone -q git@github.com:fclimited/hotel-booking-engine-ui-server.git
git clone -q git@github.com:fclimited/hotel-booking-engine-ui-client.git
