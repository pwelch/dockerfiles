#!/bin/zsh

for file in test/*; do if [[ ! "$file" == *.(tex|dvi|sh) ]]; then rm $file; fi; done
