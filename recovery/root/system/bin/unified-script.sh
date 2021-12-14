#!/system/bin/sh
# automatically set device props for unified tree shared-hardware models/variants


load_op8t()
{
    resetprop "ro.build.product" "OnePlus8T"
    resetprop "ro.display.series" "OnePlus 8T"
    resetprop "ro.product.device" "OnePlus8T"
    resetprop "ro.product.model" "OnePlus 8T"
    resetprop "ro.product.name" "OnePlus8T"
    resetprop "ro.product.odm.device" "OnePlus8T"
    resetprop "ro.product.odm.model" "OnePlus 8T"
    resetprop "ro.product.odm.name" "OnePlus8T"
    resetprop "ro.product.product.device" "OnePlus8T"
    resetprop "ro.product.product.model" "OnePlus 8T"
    resetprop "ro.product.product.name" "OnePlus8T"
    resetprop "ro.product.system.device" "OnePlus8T"
    resetprop "ro.product.system.model" "OnePlus 8T"
    resetprop "ro.product.system.name" "OnePlus8T"
    resetprop "ro.product.system_ext.device" "OnePlus8T"
    resetprop "ro.product.system_ext.model" "OnePlus 8T"
    resetprop "ro.product.system_ext.name" "OnePlus8T"
    resetprop "ro.product.vendor.device" "OnePlus8T"
    resetprop "ro.product.vendor.model" "OnePlus 8T"
    resetprop "ro.product.vendor.name" "OnePlus8T"
}

load_opnordce()
{
    resetprop "ro.build.product" "OnePlusNordCE"
    resetprop "ro.display.series" "OnePlus Nord CE"
    resetprop "ro.product.device" "OnePlusNordCE"
    resetprop "ro.product.model" "OnePlus Nord CE"
    resetprop "ro.product.name" "OnePlusNordCE"
    resetprop "ro.product.odm.device" "OnePlusNordCE"
    resetprop "ro.product.odm.model" "OnePlus Nord CE"
    resetprop "ro.product.odm.name" "OnePlusNordCE"
    resetprop "ro.product.product.device" "OnePlusNordCE"
    resetprop "ro.product.product.model" "OnePlus Nord CE"
    resetprop "ro.product.product.name" "OnePlusNordCE"
    resetprop "ro.product.system.device" "OnePlusNordCE"
    resetprop "ro.product.system.model" "OnePlus Nord CE"
    resetprop "ro.product.system.name" "OnePlusNordCE"
    resetprop "ro.product.system_ext.device" "OnePlusNordCE"
    resetprop "ro.product.system_ext.model" "OnePlus Nord CE"
    resetprop "ro.product.system_ext.name" "OnePlusNordCE"
    resetprop "ro.product.vendor.device" "OnePlusNordCE"
    resetprop "ro.product.vendor.model" "OnePlus Nord CE"
    resetprop "ro.product.vendor.name" "OnePlusNordCE"
}

load_op9r()
{
    resetprop "ro.build.product" "OnePlus9R"
    resetprop "ro.display.series" "OnePlus 9R"
    resetprop "ro.product.device" "OnePlus9R"
    resetprop "ro.product.model" "OnePlus 9R"
    resetprop "ro.product.name" "OnePlus9R_IND"
    resetprop "ro.product.odm.device" "OnePlus9R"
    resetprop "ro.product.odm.model" "OnePlus 9R"
    resetprop "ro.product.odm.name" "OnePlus9R_IND"
    resetprop "ro.product.product.device" "OnePlus9R"
    resetprop "ro.product.product.model" "OnePlus 9R"
    resetprop "ro.product.product.name" "OnePlus9R_IND"
    resetprop "ro.product.system.device" "OnePlus9R"
    resetprop "ro.product.system.model" "OnePlus 9R"
    resetprop "ro.product.system.name" "OnePlus9R_IND"
    resetprop "ro.product.system_ext.device" "OnePlus9R"
    resetprop "ro.product.system_ext.model" "OnePlus 9R"
    resetprop "ro.product.system_ext.name" "OnePlus9R_IND"
    resetprop "ro.product.vendor.device" "OnePlus9R"
    resetprop "ro.product.vendor.model" "OnePlus 9R"
    resetprop "ro.product.vendor.name" "OnePlus9R_IND"
}

project=$(getprop ro.boot.project_codename)
echo "Running unified/variant script with $project..." >> /tmp/recovery.log

case $project in
    lemonades)
        load_op9r
        ;;
    ebba)
	load_opnordce
	;;
    *)
        load_op8t
        ;;
esac

exit 0
