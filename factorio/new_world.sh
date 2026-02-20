systemctl stop factorio
mv current_world.zip old_world.zip
./factorio/bin/x64/factorio --create current_world.zip --map-gen-settings map_gen_settings.json
systemctl start factorio
