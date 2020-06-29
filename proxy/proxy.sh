#!/bin/bash

function finish {
  echo 'Killing Proxifier';
  pkill -x Proxifier;
}
trap finish EXIT

echo 'Launching Proxifier';
open -a /Applications/Proxifier.app

echo 'Starting Proxy Connection';
ssh -ND 8888 kussie@kussie.com.au -p 2200;