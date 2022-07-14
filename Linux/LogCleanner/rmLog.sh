# bin/bash
echo -e "rmOut:" `rm -rf *.log` "\n" `date "+%Y-%m-%d %H:%M:%S"` '|' "[*.log]Clean Over\n"
echo -e "rmOut:" `rm -rf /MySoftWare/mailServer/docker-data/dms/mail-logs` "\n" `date "+%Y-%m-%d %H:%M:%S"` '|' "[mailServerLog]Clean Over\n"
echo -e "\ndiskSituation\n"
df -H
reboot