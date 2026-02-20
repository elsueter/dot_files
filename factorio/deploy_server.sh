WD=$(pwd)
USR="joest"

echo "[Unit]\nDescription=Factorio Server\nStartLimitIntervalSec=0\n\n[Service]\nType=simple\nUser=${USR}\nWordingDirectory=${WD}\nExecStart=sh server_startup.sh" >> /etc/systemd/system/factorio.service
