# mi_nobl_sud_only_root

adb reboot bootloader

fastboot oem set-gpu-preemption 0 androidboot.selinux=permissive

fastboot continue

## only once

ensure to copy rish from shizuku on a terminal like termux and auth it first.

use this [sud](https://github.com/corellium/sud)

adb push su /sdcard

adb push root_rev.sh /sdcard

adb push root.sh /sdcard

adb push mqsasrootshell.sh /sdcard/mqsasrootshell.sh

adb shell

source /sdcard/root_rev.sh

CTRL+C

source /sdcard/mqsasrootshell.sh

mv /sdcard/su /data/mqsas

cd /data/mqsas

chcon u:r:su:s0 su

chmod 777 su

# every boot with permissive cmdline from untrusted_app terminal

source /sdcard/root.sh


