echo -ne "
                            _____           _        _ _ 
     /\            | |     |_   _|         | |      | | |
    /  \   _ __ ___| |__     | |  _ __  ___| |_ __ _| | |
   / /\ \ | '__/ __| '_ \    | | | '_ \/ __| __/ _` | | |
  / ____ \| | | (__| | | |  _| |_| | | \__ \ || (_| | | |
 /_/    \_\_|  \___|_| |_| |_____|_| |_|___/\__\__,_|_|_|                                                 
                                                         
"

# Connect to internet
echo -ne "Connect to internet"

iwctl --passphrase pass station wlan0 connect SSID

# exit
exit


# Loadkeys

echo -ne "Load Keys"

loadkeys us

# Install dependencies

echo -ne "Install dependencies"

pacman -Sy

# Update system time

echo -ne "Update system time"

timedatectl set-ntp true

# Disk partition

cfdisk /dev/sda

# Postinstall

echo -ne "
                            _____           _        _ _ 
     /\            | |     |_   _|         | |      | | |
    /  \   _ __ ___| |__     | |  _ __  ___| |_ __ _| | |
   / /\ \ | '__/ __| '_ \    | | | '_ \/ __| __/ _` | | |
  / ____ \| | | (__| | | |  _| |_| | | \__ \ || (_| | | |
 /_/    \_\_|  \___|_| |_| |_____|_| |_|___/\__\__,_|_|_|  
 
 Use the script-2
                                                         
"




