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

echo "Writing grub..."

sudo update-grub

reboot
