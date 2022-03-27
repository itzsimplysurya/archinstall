echo -ne "
                            _____           _        _ _ 
     /\            | |     |_   _|         | |      | | |
    /  \   _ __ ___| |__     | |  _ __  ___| |_ __ _| | |
   / /\ \ | '__/ __| '_ \    | | | '_ \/ __| __/ _` | | |
  / ____ \| | | (__| | | |  _| |_| | | \__ \ || (_| | | |
 /_/    \_\_|  \___|_| |_| |_____|_| |_|___/\__\__,_|_|_|                                                 
                                                         
"

# Format Partitions

echo -ne "Format Partition"

mkfs.ext4 /dev/sda1

mkfs.fat -F 32 /dev/sda2

# Install base packages

echo -ne "Install base packages"

pacstrap /mnt base linux linux-firmware base

# Configure the system

echo -ne "Configure base system"

genfstab -U /mnt >> /mnt/etc/fstab

# Chroot

echo -ne "Chroot"

arch-chroot /mnt


echo -ne "
                            _____           _        _ _ 
     /\            | |     |_   _|         | |      | | |
    /  \   _ __ ___| |__     | |  _ __  ___| |_ __ _| | |
   / /\ \ | '__/ __| '_ \    | | | '_ \/ __| __/ _` | | |
  / ____ \| | | (__| | | |  _| |_| | | \__ \ || (_| | | |
 /_/    \_\_|  \___|_| |_| |_____|_| |_|___/\__\__,_|_|_|                                                 
                                                         
"

echo -ne "
  Next steps:
      #1 locale
         * locale.gen
         */etc/locale.conf
         LANG=en_US.UTF-8
         */etc/vconsole.conf
           KEYMAP=us
         *Hostname
           /etc/hostname
"

