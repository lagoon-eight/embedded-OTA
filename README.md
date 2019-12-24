# embedded-OTA
Embedded Over the Air updates demo

# Setting up the Raspberry PI

1. Set up Raspberry PI with necessary cables and hardware. I used a USB-c to USB cable. There was not enough power to connect to the iPhone adapter, so instead, I plugged into the power cable that has a USB plug.
2. Used a 32GB micro-SD card.
3. Installed Raspbian operating system, following instructions from this link:
https://www.raspberrypi.org/documentation/installation/installing-images/
4. Also need a micro-HDMI connector to connect the HDMI display.

# Setting up the Partitions

Initially, the Raspberry PI will have a boot partition and another partition where / is mounted with the rest of the empty space.

```bash
pi@raspberrypi:~ $ sudo lsblk -o NAME,FSTYPE,SIZE,MOUNTPOINT,LABEL
NAME        FSTYPE  SIZE MOUNTPOINT LABEL
mmcblk0              29G            
├─mmcblk0p1 vfat    256M /boot      boot
└─mmcblk0p2 ext4   28.7G /          rootfs
```
