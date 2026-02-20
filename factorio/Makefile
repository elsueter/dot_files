WD:=$(shell pwd)
USR:=$(shell whoami)

# ------------------------------- Expected targets for a user to make use of ------------------------------------------
#
# Default target to set up the server and service for factorio server
deploy: setup_service download

start:
	systemctl start factorio

restart:
	systemctl restart factorio

download:
	wget https://factorio.com/get-download/stable/headless/linux64
	tar -xf linux64
	rm -rf linux64

update:
	wget https://factorio.com/get-download/stable/headless/linux64
	rm -rf factorio
	tar -xf linux64
	rm -rf linux64
	systemctl restart factorio

new_world:
	systemctl stop factorio
	mv current_world.zip old_world.zip
	./factorio/bin/x64/factorio --create current_world.zip --map-gen-settings map_gen_settings.json
	systemctl start factorio

# ------------------------------- Automatically gets called by the other targets ---------------------------------------

# You will need to setup your own server-settings.json for your server
manual_start:
	cd factorio
	./bin/x64/factorio --start-server ../current_world.zip --server-settings ../server-settings.json

setup_service:
	rm -rf /etc/systemd/system/factorio.service
	echo "[Unit]\nDescription=Factorio Server\nStartLimitIntervalSec=0\n\n[Service]\nType=simple\nUser=$(USR)\nWordingDirectory=$(WD)\nExecStart=make manual_start" >> /etc/systemd/system/factorio.service
	systemctl daemon-reload
