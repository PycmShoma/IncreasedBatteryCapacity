#!/system/bin/sh
MODDIR=${0%/*}
chmod 644 /sys/class/power_supply/bms/charge_full_design
echo "40000000" > /sys/class/power_supply/bms/charge_full_design
chmod 444 /sys/class/power_supply/bms/charge_full_design