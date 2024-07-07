This reposiotory contains scipt automatically updating DynHost in OVH domain registrar and name server.

Required software: curl, jq

Place ddns.sh script at proper path at your server. Then edit crontab with crontab -e command and append the file's content with below statements:
```
0 * * * * /path/to/ddns.sh
@reboot /path/to/ddns.sh
```
Save the file and exit. Now your dynamic external public IP address will be updated each hour and the log will be saved at /var/log/ddns.log. Executing script at boot grants public IP address to update when there is, for example, a power outage and yet another external public IP address may be assigned.

Remember to update script file's permissions by granting execution right by execuitng below command:
```
chmod +x /path/to/ddns.sh
```
If you will not exeute this script as root user, You have to create /var/log/ddns.log file manually (as root) and change the ownership of that file to user that will execute that script in his/her own crontab.