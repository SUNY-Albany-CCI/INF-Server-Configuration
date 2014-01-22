#!/bin/bash
#
# Run this script as sudo
#
cd /var/www
mkdir -p LearningEncounters
cd LearningEncounters

SUNYGithub=https://github.com/SUNY-Albany-CCI-LearningEncounters

git clone --recursive $SUNYGithub/EWD-JS-Introduction-Part-I.git
git clone --recursive $SUNYGithub/RDF-Introduction-Part-I.git
git clone --recursive $SUNYGithub/ITLAL-Seminar-Activities.git
git clone --recursive $SUNYGithub/Encounter-Template-Reveal.js.git
git clone --recursive $SUNYGithub/Creating-Learning-Encounters.git
git clone --recursive $SUNYGithub/Git-Part-I.git
git clone --recursive $SUNYGithub/Linux-Kernel-Training-Session-I.git
git clone --recursive $SUNYGithub/Evolution-Of-Cooperation.git
git clone --recursive $SUNYGithub/Raspberry-Pi-Web-Server-With-Python.git
git clone --recursive $SUNYGithub/Who-Killed-Aaron-Swartz.git

cp index_for_server.html  /var/www/index.html

