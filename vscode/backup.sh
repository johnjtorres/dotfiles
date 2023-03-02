#!/bin/bash
cp $HOME/.config/Code/User/keybindings.json .
cp $HOME/.config/Code/User/settings.json .
cp -r $HOME/.config/Code/User/snippets .
code --list-extensions > extensions
