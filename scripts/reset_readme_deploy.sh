#!/bin/bash

README='_site/README.md'

# clear the README.md in _site
rm $README

# set up a new README.md for displaying on the GitHub repo
touch $README

# put some basic info into the readme
echo -e "# deltarcm.github.io\n" >> $README
echo -e "This repository contains the *built* DeltaRCM organization website.\n" >> $README
echo -e "You can visit the website at [deltarcm.org](https://deltarcm.org).\n" >> $README

echo -e "**Warning: Do not modify content in this repository directly.**\n" >> $README
echo -e "Changes to this repository will be overwritten on subsequent push from Travis CI!" >> $README


echo -e "## source\n" >> $README
echo -e "You can view the website source at https://github.com/DeltaRCM/deltarcm.org\n" >> $README


