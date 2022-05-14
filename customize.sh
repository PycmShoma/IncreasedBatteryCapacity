#!/sbin/sh
#
  echo "- Done"
  echo "*******************"
  sleep 1
  echo "- Starting additional script"
  chmod 755 $MODPATH/service.sh
  mv $MODPATH/service.sh /data/adb/service.d/battery.sh
  sleep 1

