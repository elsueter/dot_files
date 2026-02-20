WD=$(pwd)
USR=$(whoami)

new:
	systemctl stop factorio
	mv current_world.zip old_world.zip
	./factorio/bin/x64/factorio --create current_world.zip --map-gen-settings map_gen_settings.json
	systemctl start factorio

update:
	wget https://factorio.com/get-download/stable/headless/linux64
	rm -rf factorio
	tar -xf linux64
	rm -rf linux64
	systemctl restart factorio

start:
	systemctl start factorio

startup:
	cd factorio
	./bin/x64/factorio --start-server ../current_world.zip --server-settings ../server-settings.json

deploy:
	echo "[Unit]\nDescription=Factorio Server\nStartLimitIntervalSec=0\n\n[Service]\nType=simple\nUser=${USR}\nWordingDirectory=${WD}\nExecStart=make startup" >> /etc/systemd/system/factorio.service
