#!/bin/sh
/system/bin/service call miui.mqsas.IMQSNative 21 i32 1 s16 "runcon" i32 1 s16 "u:r:su:s0 /data/local/tmp/shizuku_starter" s16 '/sdcard/shizuku_out.log' i32 600
sleep 5
rish -c "/system/bin/toybox mount --bind /data/mqsas /system/xbin"
rish -c "/system/xbin/su --daemon &"
