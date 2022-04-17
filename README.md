# Device Tree for Lenovo Xiaoxin Pad Plus (TB-J607F) for OrangeFox Recovery Project
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
fastboot boot out/target/product/J607F/recovery.img 

# Since Lenovo Xiaoxin Pad Plus has a separate recovery partition, you can flash the recovery with
fastboot flash recovery recovery.img
```

Kernel: https://github.com/bigsaltyfishes/kernel_lenovo_J607Z.git

##### Credits
- bigsaltyfishes for J607F tree
- bluehomewu for screen flipping solution
- jerry3055 for touching issue solution
- bigbiff for decryption
- Systemad for original tree
- CaptainThrowback for original tree
- mauronofrio for original tree
- theincognito-inc for 8T tree
- TWRP team
- OrangeFox team
