#!/system/bin/sh

#____________________________________
# Mvest Copyright © REXX FLOSS™
# Recode at 30 - 00:02
# New Simpel Logic @visk44
#____________________________________

wait_until_login() {
while [[ `getprop sys.boot_completed` -ne 1 && -d "/sdcard" ]]
do
sleep 2
done
local test_file="/sdcard/.PERMISSION_TEST"
touch "$test_file"
while [ ! -f "$test_file" ]; do
touch "$test_file"
sleep 2
done
rm "$test_file"
}

wait_until_login
sleep 5
mkt