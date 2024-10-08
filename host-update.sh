#! /bin/bash

echo
echo ================================================================================
echo Renstar Global LLC - Generic Host Update Utility *nix Systems v1
echo ================================================================================
echo

if [ -f "/opt/Plex-Updater/update-plex.sh" ]
then
	echo PLEX Detected
	echo Updating PLEX...
	echo

	/usr/bin/sudo /opt/Plex-Updater/update-plex.sh

	echo
	echo PLEX Update Complete.
	echo
fi



echo Updating APT Packages... Please Wait.
echo

/usr/bin/sudo /usr/bin/nala update && /usr/bin/sudo /usr/bin/nala upgrade -y && /usr/bin/sudo /usr/bin/nala autoremove

echo
echo APT Package Update Complete.
echo

if [ -f "/usr/local/bin/pihole" ]
then
	echo Pi-Hole Detected
	echo Updating Pi-Hole...
	echo

	/usr/bin/sudo /usr/local/bin/pihole -up

	echo
	echo Pi-Hole Update Complete.
	echo
fi

if [ -f "/usr/local/bin/hb-service" ]
then
	echo Homebridge Detected
	echo Updating Homebridge NODE...
	echo

	/usr/bin/sudo /usr/local/bin/hb-service update-node

	echo
	echo Homebridge Node Update Complete.
	echo
fi

echo Host Update Complete.
echo
echo Have a _____ day.
echo
