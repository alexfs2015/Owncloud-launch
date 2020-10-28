OWNCLOUD_FILE=/opt/owncloud-10.5.0-2/ctlscript.sh
if test -f "$OWNCLOUD_FILE"; then
	echo '\n#sudo\nalias sudo="sudo "\n\n#owncloud\nalias owncloud-start="sh '$OWNCLOUD_FILE' start"\nalias owncloud-stop="sh '$OWNCLOUD_FILE' stop"' >> ~/.bashrc
else
	echo "Owncloud tiene que estar en la ruta por defecto"
fi
