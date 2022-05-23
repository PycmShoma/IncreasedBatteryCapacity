#!/sbin/sh
#
  echo " - Done"
  sleep 1
  echo " - Starting additional script"
  sleep 1
#
DEVICE=`getprop ro.product.system.device`
if [ $DEVICE = cepheus ]; then
    echo " - Device is cepheus"
    sleep 1
    echo " - Installing module"
    chmod 755 $MODPATH/service.sh
    mv $MODPATH/service.sh /data/adb/service.d/battery.sh
    sleep 1
  if  [ -d  /system/vendor/overlay ]; then
    echo "- Overlays directory found in vendor"
    sleep 1
    echo "- Files will be copied to vendor"
    mv $MODPATH/system/folder $MODPATH/system/vendor
  elif [ -d  /system/product/overlay ]; then
    echo "- Overlays directory found in product"
    sleep 1
    echo "- Files will be copied to product"
    mv $MODPATH/system/folder $MODPATH/system/product
  else
  echo "- Overlays not found"
  abort
  fi;
  else
    echo " - Device is $DEVICE"
    sleep 1
    echo " - This module for cepheus"
    abort
fi;
