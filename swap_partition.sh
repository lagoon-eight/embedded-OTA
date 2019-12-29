#!/bin/bash

echo "Swapping partition..."

# ref: https://askubuntu.com/a/30157/8698
if ! [ $(id -u) = 0 ]; then
  echo "The script needs to be run as root." >&2
  exit 1
fi

partition_number="$1"

echo "Booting in $partition_number"

echo "Modifying grub config..."

sed -i "s/GRUB_DEFAULT=.*/GRUB_DEFAULT=$partition_number/" /etc/default/grub


# Because I am currently running two phisical hard drives, I need to write grub to the mbr on this device, 
# otherwise changes will not take effect
echo "Writing grub to device ..."

sudo grub-install /dev/sdb

echo "Updating grub to this device..."

sudo update-grub

echo "Rebooting..."

reboot
