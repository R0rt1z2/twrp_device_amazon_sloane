#!/sbin/sh


echo "usb-script" > /tmp/usb
sleep 10
mode=$(getprop twrp.usb.mode)
echo $mode > /sys/devices/bus.8/11270000.SSUSB/mode
