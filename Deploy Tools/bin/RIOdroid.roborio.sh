#! /bin/sh
#
# Install necesary files
# -------------------------
# Copy adb to /bin
# copy adb.sh to /etc/init.d
# copy the libusb4java.so to the root directory
cd ~/
tar -zxvf RIOdroid.tar.gz -C /
echo "[RIOdroid]:Files Extracted"

# Make a symbolic link for usb4java
# -------------------------
ln -s /lib/ld-linux.so.3 /lib/ld-linux-armhf.so.3

# Set permissions for adb.sh
# -------------------------
cd /etc/init.d/
chown root:root adb.sh
update-rc.d adb.sh defaults
chmod +x adb.sh

# Set exectuable permission for adb
# -------------------------
cd /usr/bin
chmod 777 adb
cd ~

echo "[RIOdroid]:Permissions Fixed"
echo "[RIOdroid]:Finished"