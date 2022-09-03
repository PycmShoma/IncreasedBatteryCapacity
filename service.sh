#!/system/bin/sh
#
sed -i 's/POWER_SUPPLY_CHARGE_FULL=.*./POWER_SUPPLY_CHARGE_FULL=4000000/' /sys/class/power_supply/bms/uevent
sed -i 's/POWER_SUPPLY_CHARGE_FULL_DESIGN=.*./POWER_SUPPLY_CHARGE_FULL_DESIGN=4000000/' /sys/class/power_supply/bms/uevent
sed -i 's/POWER_SUPPLY_CHARGE_FULL=.*./POWER_SUPPLY_CHARGE_FULL=4000000/' /sys/class/power_supply/battery/uevent
sed -i 's/POWER_SUPPLY_CHARGE_FULL_DESIGN=.*./POWER_SUPPLY_CHARGE_FULL_DESIGN=4000000/' /sys/class/power_supply/battery/uevent
echo 4000000 > /sys/class/power_supply/bms/charge_full
echo 4000000 > /sys/class/power_supply/bms/charge_full_design
echo 4000000 > /sys/class/power_supply/battery/charge_full
echo 4000000 > /sys/class/power_supply/battery/charge_full_design
