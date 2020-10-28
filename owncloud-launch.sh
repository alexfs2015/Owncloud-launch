OWNCLOUD_FILE=/opt/owncloud-10.5.0-2/ctlscript.sh
if test -f "$OWNCLOUD_FILE"; then
	echo '\n#sudo\nalias sudo="sudo "\n\n#owncloud\nalias owncloud-start="sh '$OWNCLOUD_FILE' start"\nalias owncloud-stop="sh '$OWNCLOUD_FILE' stop"' >> ~/.bashrc
else
	echo "El archivo no esta en la ubicacion predeterminada"
	read -p "Introduce la ruta de la carpeta de Owncloud: " ubicacion
	echo '\n#sudo\nalias sudo="sudo "\n\n#owncloud\nalias owncloud-start="sh '$ubicacion'/ctlscript.sh start"\nalias owncloud-stop="sh '$ubicacion'/ctlscript.sh stop"' >> ~/.bashrc
fi

source ~/.bashrc
