#!/bin/bash

# Install httpd server
yum -y install httpd

# Enable the httpd server to start at boot
systemctl enable httpd


# Create our index file
cat > /var/www/html/index.html <<- "EOF"
<html>
<br /><br />
<pre>                         
                                                             
                                          __  __   ___   .--.
                                         |  |/  `.'   `. |__|
                                         |   .-.  .-.   '.--.
                                    __   |  |  |  |  |  ||  |
                                 .:--.'. |  |  |  |  |  ||  |
                                / |   \ ||  |  |  |  |  ||  |
                                `" __ | ||  |  |  |  |  ||  |
                                 .'.''| ||__|  |__|  |__||__|
                                / /   | |_                   
                                \ \._,\ '/                   
                                 `--'  `"                    

                               .-'''-.                                              .-'''-.               
                               '   _    \                                           '   _    \             
                             /   /` '.   \  __  __   ___                     .--. /   /` '.   \    _..._   
                            .   |     \  ' |  |/  `.'   `.                   |__|.   |     \  '  .'     '. 
                         .| |   '      |  '|   .-.  .-.   '              .|  .--.|   '      |  '.   .-.   .
    __                 .' |_\    \     / / |  |  |  |  |  |    __      .' |_ |  |\    \     / / |  '   '  |
 .:--.'.     _    _  .'     |`.   ` ..' /  |  |  |  |  |  | .:--.'.  .'     ||  | `.   ` ..' /  |  |   |  |
/ |   \ |   | '  / |'--.  .-'   '-...-'`   |  |  |  |  |  |/ |   \ |'--.  .-'|  |    '-...-'`   |  |   |  |
`" __ | |  .' | .' |   |  |                |  |  |  |  |  |`" __ | |   |  |  |  |               |  |   |  |
 .'.''| |  /  | /  |   |  |                |__|  |__|  |__| .'.''| |   |  |  |__|               |  |   |  |
/ /   | |_|   `'.  |   |  '.'                              / /   | |_  |  '.'                   |  |   |  |
\ \._,\ '/'   .'|  '/  |   /                               \ \._,\ '/  |   /                    |  |   |  |
 `--'  `"  `-'  `--'   `'-'                                 `--'  `"   `'-'                     '--'   '--'
</pre>
<br />
</html>
EOF


# Re-Start the service
systemctl restart httpd


## Edit the MOTD to display something nice
>>/etc/motd
cat > /etc/motd <<- "EOF"
                            
                                                             
                                          __  __   ___   .--.
                                         |  |/  `.'   `. |__|
                                         |   .-.  .-.   '.--.
                                    __   |  |  |  |  |  ||  |
                                 .:--.'. |  |  |  |  |  ||  |
                                / |   \ ||  |  |  |  |  ||  |
                                `" __ | ||  |  |  |  |  ||  |
                                 .'.''| ||__|  |__|  |__||__|
                                / /   | |_                   
                                \ \._,\ '/                   
                                 `--'  `"                    

                               .-'''-.                                              .-'''-.               
                               '   _    \                                           '   _    \             
                             /   /` '.   \  __  __   ___                     .--. /   /` '.   \    _..._   
                            .   |     \  ' |  |/  `.'   `.                   |__|.   |     \  '  .'     '. 
                         .| |   '      |  '|   .-.  .-.   '              .|  .--.|   '      |  '.   .-.   .
    __                 .' |_\    \     / / |  |  |  |  |  |    __      .' |_ |  |\    \     / / |  '   '  |
 .:--.'.     _    _  .'     |`.   ` ..' /  |  |  |  |  |  | .:--.'.  .'     ||  | `.   ` ..' /  |  |   |  |
/ |   \ |   | '  / |'--.  .-'   '-...-'`   |  |  |  |  |  |/ |   \ |'--.  .-'|  |    '-...-'`   |  |   |  |
`" __ | |  .' | .' |   |  |                |  |  |  |  |  |`" __ | |   |  |  |  |               |  |   |  |
 .'.''| |  /  | /  |   |  |                |__|  |__|  |__| .'.''| |   |  |  |__|               |  |   |  |
/ /   | |_|   `'.  |   |  '.'                              / /   | |_  |  '.'                   |  |   |  |
\ \._,\ '/'   .'|  '/  |   /                               \ \._,\ '/  |   /                    |  |   |  |
 `--'  `"  `-'  `--'   `'-'                                 `--'  `"   `'-'                     '--'   '--'

EOF


# Install the clam Antivirus
sudo yum --enablerepo=epel install -y clamav