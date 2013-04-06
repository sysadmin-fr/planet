#!/usr/bin/env zsh

set -e

basedir=${0:h}
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
