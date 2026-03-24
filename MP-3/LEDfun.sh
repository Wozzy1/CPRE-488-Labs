#!/bin/sh

LED_ADDR=0x41200000
BTN_ADDR=0x41210000
SW_ADDR=0x41220000

while true
do
    sw=$(devmem $SW_ADDR 32)
    btn=$(devmem $BTN_ADDR 32)

    sw=$((sw & 0xFF))
    btn=$((btn & 0x1F))

    count=0
    tmp=$btn
    while [ $tmp -ne 0 ]
    do
        count=$((count + (tmp & 1)))
        tmp=$((tmp >> 1))
    done

    if [ $count -eq 0 ]; then
        led=$sw
    elif [ $count -eq 1 ]; then
        led=$(( (~sw) & 0xFF ))
    else
        led=255
    fi

    devmem $LED_ADDR 32 $led >/dev/null
    sleep 0.05
done
