#!/usr/bin/env bash

cat vscodium-extensions.txt | while read extension || [[ -n $extension ]];
do
  codium --install-extension $extension --force
done
