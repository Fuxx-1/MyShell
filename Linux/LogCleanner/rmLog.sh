# bin/bash
echo -e "rmOut:" `rm -rf *.log` "\n" `date "+%Y-%m-%d %H:%M:%S"` '|' "[*.log]Clean Over"
echo -e "rmOut:" `rm -rf /MySoftWare/mailServer/docker-data/dms/mail-logs` "\n" `date "+%Y-%m-%d %H:%M:%S"` '|' "[mailServerLog]Clean Over"