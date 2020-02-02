#!/bin/bash

# update all git submodles
git submodule foreach git pull

# add hook to ~/.bashrc
if ! grep --fixed-strings --quiet --file bashrc.hook ~/.bashrc; then
	cat <(echo "") bashrc.hook >> ~/.bashrc
fi
