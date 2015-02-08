#!/usr/bin/env zsh

basedir=${0:h}

cd ${basedir}
basedir=.

git fetch github
git merge github/master

FEEDS=${basedir}/feeds
CONFIG_TPL=${basedir}/templates/config.ini
CONFIG=${basedir}/config.ini
PLANET=$HOME/tools/venus/planet.py

# Start by config.ini.tpl
cat ${CONFIG_TPL} > ${CONFIG}

# Add all feeds
for file in ${FEEDS}/*(.)
do
	cat $file >> ${CONFIG}
done

# Finally, run planet to compute html files
$PLANET $CONFIG
