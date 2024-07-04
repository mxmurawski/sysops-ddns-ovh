This reposiotory contains scipt automatically updating DynHost i OVH domain registrar and name server.

Required software: curl, jq

Place ddns.sh script at proper path at your server. Then edit crontab with crontab -e and append file content with below statement:

0 5 * * * /path/to/script

Save the file and exit. Now your dynamic external public IP address will be updated everyday at 5:00 A.M. and the log will be saved at /var/log/ddns.log

Remember to update script file's permissions by granting execution right by below command:

chmod ugo+x /path/to/script