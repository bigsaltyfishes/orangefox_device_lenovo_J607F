#!/system/bin/sh
# automatically set device props for unified tree shared-hardware models/variants


load_J607F()
{
    resetprop "ro.build.product" "LenovoTB-J607F"
    resetprop "ro.display.series" "Lenovo TB-J607F"
    resetprop "ro.product.device" "LenovoTB-J607F"
    resetprop "ro.product.model" "Lenovo TB-J607F"
    resetprop "ro.product.name" "LenovoTB-J607F"
    resetprop "ro.product.odm.device" "LenovoTB-J607F"
    resetprop "ro.product.odm.model" "Lenovo TB-J607F"
    resetprop "ro.product.odm.name" "LenovoTB-J607F"
    resetprop "ro.product.product.device" "LenovoTB-J607F"
    resetprop "ro.product.product.model" "Lenovo TB-J607F"
    resetprop "ro.product.product.name" "LenovoTB-J607F"
    resetprop "ro.product.system.device" "LenovoTB-J607F"
    resetprop "ro.product.system.model" "Lenovo TB-J607F"
    resetprop "ro.product.system.name" "LenovoTB-J607F"
    resetprop "ro.product.system_ext.device" "LenovoTB-J607F"
    resetprop "ro.product.system_ext.model" "Lenovo TB-J607F"
    resetprop "ro.product.system_ext.name" "LenovoTB-J607F"
    resetprop "ro.product.vendor.device" "LenovoTB-J607F"
    resetprop "ro.product.vendor.model" "Lenovo TB-J607F"
    resetprop "ro.product.vendor.name" "LenovoTB-J607F"
}

load_J607Z()
{
    resetprop "ro.build.product" "LenovoTB-J607Z"
    resetprop "ro.display.series" "Lenovo TB-J607Z"
    resetprop "ro.product.device" "LenovoTB-J607Z"
    resetprop "ro.product.model" "Lenovo TB-J607Z"
    resetprop "ro.product.name" "LenovoTB-J607Z"
    resetprop "ro.product.odm.device" "LenovoTB-J607Z"
    resetprop "ro.product.odm.model" "Lenovo TB-J607Z"
    resetprop "ro.product.odm.name" "LenovoTB-J607Z"
    resetprop "ro.product.product.device" "LenovoTB-J607Z"
    resetprop "ro.product.product.model" "Lenovo TB-J607Z"
    resetprop "ro.product.product.name" "LenovoTB-J607Z"
    resetprop "ro.product.system.device" "LenovoTB-J607Z"
    resetprop "ro.product.system.model" "Lenovo TB-J607Z"
    resetprop "ro.product.system.name" "LenovoTB-J607Z"
    resetprop "ro.product.system_ext.device" "LenovoTB-J607Z"
    resetprop "ro.product.system_ext.model" "Lenovo TB-J607Z"
    resetprop "ro.product.system_ext.name" "LenovoTB-J607Z"
    resetprop "ro.product.vendor.device" "LenovoTB-J607Z"
    resetprop "ro.product.vendor.model" "Lenovo TB-J607Z"
    resetprop "ro.product.vendor.name" "LenovoTB-J607Z"
}

project=$(getprop ro.boot.project_codename)
echo "Running unified/variant script with $project..." >> /tmp/recovery.log

case $project in
    J607F)
        load_J607F
        ;;
    J607Z)
	load_J607Z
	;;
    *)
esac

exit 0
