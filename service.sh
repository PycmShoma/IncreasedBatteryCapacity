#!/system/bin/sh
#
target=$(readlink -f /sys/class/power_supply/bms/charge_full_design)
custom=/dev/.charge_full_design
echo 4000000 > $custom
/system/bin/mount -o bind $custom $target
cat $target

target=$(readlink -f /sys/class/power_supply/bms/uevent)
custom=/dev/.uevent
cat $target > $custom
sed -i 's/POWER_SUPPLY_CHARGE_FULL_DESIGN=.*./POWER_SUPPLY_CHARGE_FULL_DESIGN=4000000/' $custom
/system/bin/mount -o bind $custom $target
cat $target
