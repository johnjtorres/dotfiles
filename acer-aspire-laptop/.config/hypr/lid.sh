#!/usr/bin/env bash

# Disable laptop screen if external monitor is connected.
if hyprctl monitors | grep -q "Monitor HDMI-A-1"; then
  if [[ $1 == "open" ]]; then
    hyprctl keyword monitor "eDP-1,preferred,auto,1"
  else
    hyprctl keyword monitor "eDP-1,disable"
  fi
fi
