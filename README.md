# Device Tree for Oneplus Nord CE 5G (ebba) for OrangeFox Recovery Project
## Disclaimer - Unofficial OrangeFox!
These are personal test builds of mine. In no way do I hold responsibility if it/you messes up your device.
Proceed at your own risk.

## Setup repo tool
Setup repo tool from here https://source.android.com/setup/develop#installing-repo

## Compile

For build instructions go to OrangeFox Recovery wiki: https://wiki.orangefox.tech/en/dev/building


To test it:

```
# To temporarily boot it
fastboot boot out/target/product/ebba/recovery.img 

# Since Oneplus Nord CE 5G has a separate recovery partition, you can flash the recovery with
fastboot flash recovery recovery.img
```

Kernel: https://gitlab.com/opnordce/android_kernel_oneplus_sm7225

##### Credits
- bigbiff for decryption
- Systemad for original tree
- CaptainThrowback for original tree
- mauronofrio for original tree
- theincognito-inc for 8T tree
- TWRP team
- OrangeFox team
