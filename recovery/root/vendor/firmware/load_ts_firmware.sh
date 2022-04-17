#!/sbin/sh

module_path=/vendor/firmware

touch_class_path=/sys/class/touchscreen
touch_path=
firmware_path=/vendor/firmware
firmware_file=
device=$(getprop ro.boot.device)

wait_for_poweron()
{
	local wait_nomore
	local readiness
	local count
	wait_nomore=60
	count=0
	while true; do
		readiness=$(cat $touch_path/poweron)
		if [ "$readiness" == "1" ]; then
			break;
		fi
		count=$((count+1))
		[ $count -eq $wait_nomore ] && break
		sleep 1
	done
	if [ $count -eq $wait_nomore ]; then
		return 1
	fi
	return 0
}


# Load all needed modules
insmod $module_path/sensors_class.ko
insmod $module_path/aw8695.ko
insmod $module_path/bq2597x_mmi.ko
insmod $module_path/bq27426_fg_mmi.ko
insmod $module_path/nova_0flash_mmi.ko
insmod $module_path/focaltech_0flash_mmi.ko
insmod $module_path/utags.ko
insmod $module_path/exfat.ko
insmod $module_path/mmi_annotate.ko
insmod $module_path/mmi_info.ko
insmod $module_path/mmi_parallel_charger.ko
insmod $module_path/mmi_sys_temp.ko

cd $firmware_path
touch_product_string=$(ls $touch_class_path)
case $touch_product_string in
    ft8756)
        firmware_file="novatek_ts_mp.bin"
        ;;
    *)
        firmware_file="novatek_ts_fw.bin"
        ;;
esac

touch_path=/sys$(cat $touch_class_path/$touch_product_string/path | awk -Fdef '{print $1}')
wait_for_poweron
echo $firmware_file > $touch_path/doreflash
echo 1 > $touch_path/forcereflash
sleep 5
echo 1 > $touch_path/reset

return 0

